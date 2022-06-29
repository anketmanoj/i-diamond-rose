class CommentEntity {
  CommentEntity(
      {this.id = -1,
      this.postId = -1,
      this.userName = '',
      this.content = '',
      this.time,
      this.like = 0,
      this.replyIds});

  int? id;
  int? postId;
  String? userName;
  String? content;
  String? time;
  int? like;
  List<int>? replyIds;
}
