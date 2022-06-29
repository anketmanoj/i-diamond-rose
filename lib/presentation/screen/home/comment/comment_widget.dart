import 'package:diamon_rose_app/domain/entities/comment_entity/comment_video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/home/comment/comment_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

Future<void> showComment(BuildContext context) {
  final controller = Get.put(CommentViewModel(),
      tag:
          "${Get.find<ActionsToolbarViewModel>().videoEntity!.videoDTO!.id}_$COMMENT_TAG");
  return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return CommentWidget(
          controller: controller,
        );
      }).whenComplete(() {
    dismissLoading();
    Get.delete<CommentViewModel>(
        tag:
            "${Get.find<ActionsToolbarViewModel>().videoEntity!.videoDTO!.id}_$COMMENT_TAG");
  });
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key, required this.controller}) : super(key: key);
  final CommentViewModel controller;

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDragIcon(),
                  _buildBody(context),
                  _buildListEmoji(),
                  _buildInputComment(context),
                ],
              ),
            ),
        onLoading: Container(
            height: heightScreen(percent: 30),
            width: widthScreen(),
            child: FlutterEasyLoading(
              child: Container(),
            )));
  }

  Center _buildDragIcon() => Center(
        child: Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              color: AppColors.greyDarkLittle,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 5,
          width: 100,
        ),
      );

  /** Root _buildListComment needs to be wrapped in Flexible
      to scale once showing the keyboard */
  Flexible _buildBody(BuildContext context) {
    return Flexible(
        child: _buildListComment(controller.listComments, isRoot: true)
        //
        );
  }

  Widget _buildListComment(List<CommentVideoEntity?> comments,
      {bool isRoot = false}) {
    return GetBuilder<CommentViewModel>(
        init: controller,
        builder: (controller) {
          return Container(
            padding: isRoot
                ? EdgeInsets.only(top: 17, left: 17, right: 17)
                : EdgeInsets.only(left: 25),
            height: isRoot ? heightScreen(percent: 30) : null,
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                controller: controller.scrollController,
                physics: !isRoot ? NeverScrollableScrollPhysics() : null,
                itemCount: comments.length,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final CommentVideoEntity commentVideo =
                      controller.listComments[index]!;
                  return _buildCommentItem(commentVideo, context);
                },
              ),
            ),
          );
        });
  }

  Container _buildListEmoji() {
    final emojis = controller.getEmojis;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: SizedBox(
        child: ListView.builder(
          shrinkWrap: false,
          itemCount: emojis?.length ?? 0,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Center(
              child: IconButton(
                icon: Icon(emojis![index].icon),
                iconSize: 25,
                color: emojis[index].color,
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }

  Container _buildInputComment(BuildContext context) => Container(
        color: AppColors.white,
        padding: const EdgeInsets.only(bottom: 10, left: 17, right: 17),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(() => IconButton(
                onPressed: controller.commentController.value.text.length > 0
                    ? controller.addComment
                    : null,
                disabledColor: AppColors.greyBorder,
                color: AppColors.blue,
                icon: Icon(Icons.send))),
            Expanded(
              child: Container(
                height: 40,
                padding: EdgeInsets.only(left: 0),
                child: TextFormField(
                  controller: controller.commentController.value,
                  onFieldSubmitted: controller.typing,
                  onTap: dismissLoading,
                  decoration: InputDecoration(
                      focusedBorder: _textFieldBorder(),
                      disabledBorder: _textFieldBorder(),
                      enabledBorder: _textFieldBorder(),
                      errorBorder: _textFieldBorder(),
                      border: _textFieldBorder(),
                      hintText: '${Localy.of(context)!.commentHintText}',
                      contentPadding: const EdgeInsets.all(10)),
                ),
              ),
            ),
          ],
        ),
      );

  OutlineInputBorder _textFieldBorder() => OutlineInputBorder(
        gapPadding: 25,
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          width: 1,
          color: AppColors.grey,
        ),
      );

  Widget _buildCommentItem(CommentVideoEntity comment, BuildContext context) =>
      GetBuilder<CommentViewModel>(
          init: controller,
          builder: (contronller) {
            return Column(
              children: [
                _buildContent(comment, context)
              ],
            );
          });

  Widget _buildContent(CommentVideoEntity comment, BuildContext context) {
    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatarCustom(
                  avatar: comment.ownerAvatar ?? controller.myAvatar,
                  userName: comment.ownerUserName ?? controller.myDisplayName),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                        ' ${comment.ownerDisplayName ?? controller.myDisplayName}',
                        style: AppStyles.typeBold22().copyWith(
                            fontSize: 17,
                            color: comment.isSending
                                ? AppColors.greyBorder
                                : AppColors.black)),
                    comment.isSending
                        ? Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              Localy.of(context)!.loading,
                              style: AppStyles.typeText18(
                                  color: AppColors.greyBorder, size: 15),
                            ))
                        : Container(),
                  ],
                ),
                Text(' ${comment.commentVideo}',
                    style: AppStyles.typeTextNormal().copyWith(
                        fontWeight: FontWeight.normal,
                        color: comment.isSending
                            ? AppColors.greyBorder
                            : AppColors.black)),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            )
          ]),
    );
  }

  Widget _builContent(CommentVideoEntity comment, BuildContext context) =>
      GetBuilder<CommentViewModel>(
          init: controller,
          builder: (controller) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 0,
              leading: CircleAvatarCustom(
                  avatar: '', userName: comment.videoId.toString()),
              title: RichText(
                text: new TextSpan(
                  text: comment.videoId.toString(),
                  style: AppStyles.typeBold22().copyWith(fontSize: 17),
                  children: [
                    new TextSpan(
                        text: ' ${comment.commentVideo}',
                        style: AppStyles.typeTextNormal()
                            .copyWith(fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            );
          });
}
