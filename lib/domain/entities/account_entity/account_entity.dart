class AccountEntity {
  AccountEntity({
    this.id = '',
    this.userName = '',
    this.nickName = '',
    this.userPic = '',
    this.coverImage = '',
    this.job = '',
    this.followers = 0,
    this.videos = 0,
    this.following = 0,
    this.introduceContent = '',
  });

  AccountEntity.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        userName = json['user_name'],
        nickName = json['nick_name'],
        userPic = json['user_pic'],
        coverImage = json['cover_image'],
        job = json['job'],
        followers = json['followers'],
        videos = json['videos'],
        following = json['following'],
        introduceContent = json['introduce_content'];

  String id;
  String userName;
  String nickName;
  String job;
  String userPic;
  String coverImage;
  int followers;
  int videos;
  int following;
  String introduceContent;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['nick_name'] = this.nickName;
    data['user_pic'] = this.userPic;
    data['cover_image'] = this.coverImage;
    data['job'] = this.job;
    data['followers'] = this.followers;
    data['videos'] = this.videos;
    data['following'] = this.following;
    data['introduce_content'] = this.introduceContent;
    return data;
  }
}
