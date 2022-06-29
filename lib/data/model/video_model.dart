class VideoModel {
  VideoModel(
      {required this.videoId,
      required this.videoUrl,
      required this.thumbnailUrl,
      required this.userId,
      required this.userName,
      required this.displayName,
      required this.uid});

  VideoModel.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    thumbnailUrl = json['thumbnailUrl'];
    uid = json['uid'];
    userId = json['userId'];
    userName = json['userName'];
    videoId = json['videoId'];
    videoUrl = json['videoUrl'];
  }

  late int videoId;
  late String videoUrl;
  late String thumbnailUrl;
  late int userId;
  late String userName;
  late String displayName;
  late String uid;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoId'] = this.videoId;
    data['videoUrl'] = this.videoUrl;
    data['thumbnailUrl'] = this.thumbnailUrl;
    data['userId'] = this.userId;
    data['userName'] = this.userName;
    data['displayName'] = this.displayName;
    data['uid'] = this.uid;
    return data;
  }
}
