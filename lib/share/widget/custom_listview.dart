import 'dart:collection';
import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CustomGroupListView<T, E> extends StatefulWidget {
  CustomGroupListView({
    Key? key,
    required this.elements,
    required this.groupBy,
    this.groupComparator,
    this.groupSeparatorBuilder,
    this.groupHeaderBuilder,
    this.itemBuilder,
    this.indexedItemBuilder,
    this.itemComparator,
    this.sort = true,
    this.useStickyGroupSeparators = false,
    this.spacer = const SizedBox.shrink(),
    this.floatingHeader = false,
    this.scrollDirection = Axis.vertical,
    this.controller,
    this.primary,
    this.physics,
    this.padding,
    this.reverse = false,
    this.dragStartBehavior = DragStartBehavior.start,
  })  : assert(itemBuilder != null || indexedItemBuilder != null),
        assert(groupSeparatorBuilder != null || groupHeaderBuilder != null),
        super(key: key);

  final List<T> elements;

  final E Function(T element) groupBy;

  final int Function(E value1, E value2)? groupComparator;

  final int Function(T element1, T element2)? itemComparator;

  final Widget Function(E value)? groupSeparatorBuilder;

  final Widget Function(T element)? groupHeaderBuilder;

  final Widget Function(BuildContext context, T element)? itemBuilder;

  final Widget Function(BuildContext context, T element, int index)?
      indexedItemBuilder;

  final bool sort;

  final bool useStickyGroupSeparators;

  final Widget spacer;

  final bool floatingHeader;

  final ScrollController? controller;

  final Axis scrollDirection;

  final bool? primary;

  final ScrollPhysics? physics;

  final EdgeInsetsGeometry? padding;

  final bool reverse;

  final DragStartBehavior dragStartBehavior;

  /// Creates a [CustomGroupListView]

  @override
  State<StatefulWidget> createState() => _CustomGroupListViewState<T, E>();
}

class _CustomGroupListViewState<T, E> extends State<CustomGroupListView<T, E>> {
  final LinkedHashMap<String, GlobalKey> _keys = LinkedHashMap();
  final GlobalKey _key = GlobalKey();
  late final ScrollController _controller;
  GlobalKey? _groupHeaderKey;
  List<T> _sortedElements = [];
  int _topElementIndex = 0;
  RenderBox? _headerBox;
  RenderBox? _listBox;

  @override
  void initState() {
    _controller = widget.controller ?? ScrollController();
    if (widget.useStickyGroupSeparators) {
      _controller.addListener(_scrollListener);
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.useStickyGroupSeparators) {
      _controller.removeListener(_scrollListener);
    }
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _sortedElements = _sortElements();
    final unSeenIndex = widget.reverse ? _sortedElements.length * 2 - 1 : 0;
    final _isSeparator =
        widget.reverse ? (int i) => i.isOdd : (int i) => i.isEven;

    if (widget.reverse) {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        _scrollListener();
      });
    }

    return Stack(
      key: _key,
      alignment: Alignment.topCenter,
      children: <Widget>[
        Obx(() => ListView.builder(
              key: widget.key,
              scrollDirection: widget.scrollDirection,
              controller: _controller,
              primary: widget.primary,
              physics: widget.physics,
              padding: widget.padding,
              reverse: widget.reverse,
              clipBehavior: Clip.hardEdge,
              dragStartBehavior: widget.dragStartBehavior,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
              itemCount: (_sortedElements.length) * 2,
              itemBuilder: (context, index) {
                final realIndex = index ~/ 2;
                if (index == unSeenIndex) {
                  return Opacity(
                    opacity: widget.useStickyGroupSeparators ? 0 : 1,
                    child: _buildGroupDivider(_sortedElements[realIndex]),
                  );
                }
                if (_isSeparator(index)) {
                  final current = widget.groupBy(_sortedElements[realIndex]);
                  final previous = widget.groupBy(
                      _sortedElements[realIndex + (widget.reverse ? 1 : -1)]);
                  if (previous != current) {
                    return _buildGroupDivider(_sortedElements[realIndex]);
                  }
                  return widget.spacer;
                }
                return _buildItem(context, realIndex);
              },
            )),
      ],
    );
  }

  Container _buildItem(context, int realIndex) {
    return Container(
        child: widget.indexedItemBuilder == null
            ? widget.itemBuilder!(context, _sortedElements[realIndex])
            : widget.indexedItemBuilder!(
                context, _sortedElements[realIndex], realIndex));
  }

  void _scrollListener() {
    _listBox ??= _key.currentContext?.findRenderObject() as RenderBox?;
    final listPos = _listBox?.localToGlobal(Offset.zero).dy ?? 0;
    _headerBox ??=
        _groupHeaderKey?.currentContext?.findRenderObject() as RenderBox?;
    final headerHeight = _headerBox?.size.height ?? 0;
    var max = double.negativeInfinity;
    var topItemKey = widget.reverse ? '${_sortedElements.length - 1}' : '0';
    for (final entry in _keys.entries) {
      final key = entry.value;
      if (_isListItemRendered(key)) {
        final itemBox = key.currentContext!.findRenderObject()! as RenderBox;
        final y = itemBox.localToGlobal(Offset(0, -listPos - headerHeight)).dy;
        if (y <= headerHeight && y > max) {
          topItemKey = entry.key;
          max = y;
        }
      }
    }
    final index = math.max(int.parse(topItemKey), 0);
    if (index != _topElementIndex) {
      final current = widget.groupBy(_sortedElements[index]);
      final previous = widget.groupBy(_sortedElements[_topElementIndex]);

      if (previous != current) {
        _topElementIndex = index;
      }
    }
  }

  List<T> _sortElements() {
    final elements = widget.elements;
    if (widget.sort && elements.isNotEmpty) {
      elements.sort((e1, e2) {
        var compareResult;

        /// compare groups
        if (widget.groupComparator != null) {
          compareResult =
              widget.groupComparator!(widget.groupBy(e1), widget.groupBy(e2));
        } else if (widget.groupBy(e1) is Comparable) {
          compareResult = (widget.groupBy(e1) as Comparable)
              .compareTo(widget.groupBy(e2) as Comparable);
        }

        /// compare elements inside group
        if (compareResult == null || compareResult == 0) {
          if (widget.itemComparator != null) {
            compareResult = widget.itemComparator!(e1, e2);
          } else if (e1 is Comparable) {
            compareResult = e1.compareTo(e2);
          }
        }
        return compareResult;
      });
    }
    return elements;
  }

  bool _isListItemRendered(GlobalKey<State<StatefulWidget>> key) {
    return key.currentContext != null &&
        key.currentContext!.findRenderObject() != null;
  }

  Widget _buildGroupDivider(T element) {
    if (widget.groupHeaderBuilder == null) {
      return widget.groupSeparatorBuilder!(widget.groupBy(element));
    }
    return widget.groupHeaderBuilder!(element);
  }
}
