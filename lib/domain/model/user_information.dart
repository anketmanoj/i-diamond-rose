class UserInfo {
  UserInfo({
    required this.id,
    required this.userName,
    required this.firstPayment,
  });

  UserInfo.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        userName = json['userName'],
        firstPayment = json['firstPayment'];

  String id;
  String userName;
  bool firstPayment;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['firstPayment'] = this.firstPayment;
    return data;
  }
}
