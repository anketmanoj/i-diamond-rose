import 'package:diamon_rose_app/data/repositiory/comment_video_repository/comment_video_repository.dart';
import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/domain/entities/comment_entity/comment_video_entity.dart';
import 'package:diamon_rose_app/domain/entities/emoji_entity/emoji_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/video_comment_request/request_comment_video_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentViewModel extends GetxController with StateMixin {
  BuildContext? context = Get.find<HomeViewModel>().context;
  int page = 0;
  final scrollController = ScrollController();
  late ActionsToolbarViewModel actionsToolbarViewModel;

  bool isExpand(int? commentId) => _expandList?.contains(commentId) ?? false;
  List<EmojiEntity>? _emojis;
  RxList<int>? _expandList = RxList<int>();
  RxList<CommentVideoEntity?> listComments = RxList();
  RxInt totalComment = 0.obs;
  int paidScroll = 5;
  String? myAvatar = '';
  String? myDisplayName = '';
  int videoId = 0;
  RxBool isSending = false.obs;

  Rx<TextEditingController> commentController = Rx(TextEditingController());
  List<EmojiEntity>? get getEmojis => _emojis;

  @override
  Future<void> onInit() async {
    super.onInit();
    actionsToolbarViewModel = Get.find<ActionsToolbarViewModel>();
    myAvatar = Get.find<HomeViewModel>().localAvatar.value;
    myDisplayName = Get.find<HomeViewModel>().localDisplayName.value;
    videoId = Get.find<VideoDescriptionViewModel>().videoEntity.videoDTO!.id;
    totalComment = Get.find<ActionsToolbarViewModel>().totalComment;
    commentController.value.addListener(() {
      commentController.refresh();
      update();
    });
    addListenerScroll();
    initEmojis();
    initComments();
  }

  void addListenerScroll() {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        final bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
        } else {
          initComments();
        }
      }
    });
  }

  void typing(String value) {
    commentController.value.text = value;
    update();
  }

  void addComment() {
    final comment = CommentVideoEntity(
        commentVideo: commentController.value.text,
        parentCommentId: 0,
        isSending: true,
        videoId: videoId);
    totalComment++;
    CommentVideoRepository.instance.createCommentVideo(
        commentVideoEntity: comment,
        onStart: () {
          scrollController.animateTo(0,
              duration: Duration(milliseconds: 700), curve: Curves.bounceIn);
          commentController.value.clear();
          listComments
            ..insert(0, comment)
            ..refresh();
        },
        onSuccess: (response) {
          listComments[0] = comment.copyWith(isSending: false);
          listComments.refresh();
          eventChangeTotalComment();
          isSending.toggle();
          update();
        },
        onError: (string) {
          print(string);
        });

    update();
  }

  Future<void> eventChangeTotalComment() async {
    actionsToolbarViewModel.totalComment = totalComment;

    await VideoRepository.instance.saveVideoInfo(
        videoEntity: actionsToolbarViewModel.videoEntity,
        totalLike: actionsToolbarViewModel.totalLike.value,
        isLike: actionsToolbarViewModel.isLiked.value,
        isFavorite: actionsToolbarViewModel.isFavorited.value,
        totalComment: totalComment.value,
        totalFavorite: actionsToolbarViewModel.totalFavotite.value);
    Get.find<ActionsToolbarViewModel>().refresh();
    Get.find<ActionsToolbarViewModel>().update();
  }

  void initComments() {
    videoId = Get.find<ActionsToolbarViewModel>().videoEntity!.videoDTO!.id;
    CommentVideoRepository.instance.GetCommentsByVideoId(
        requestCommentVideoModel: RequestCommentVideoModel(
            type: 0, videoId: videoId, page: page, size: paidScroll),
        onStart: () {
          if (page == 0) {
            change(showLoading(), status: RxStatus.loading());
          }
        },
        onSuccess: (response) {
          listComments
            ..addAll(response.items)
            ..refresh();
          change(dismissLoading(), status: RxStatus.success());
          if (response.items.length > 0) {
            page++;
          }
        },
        onError: (error) {
          showErrorConfirmDialog(context: context!, errors: error);
        });

    // TODO(Reply): Handle Logic Reply.
  }

  void expandChange(int? commentId) {
    if (isExpand(commentId)) {
      _expandList?.remove(commentId);
      update();
    } else {
      _expandList?.add(commentId!);
      update();
    }
  }

  void initEmojis() {
    _emojis = AppData().dummyEmojis;
  }
}
