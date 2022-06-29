class VideoSetting {
  VideoSetting(
      {required this.title,
      required this.desc,
      required this.salePrice,
      this.id,
      this.videoType,
      this.saleFromDate,
      this.saleToDate,
      this.discountPercent,
      this.discountFromDate,
      this.discountToDate,
      this.donationPrice,
      this.createBy,
      this.createAt,
      this.updateBy,
      this.updateAt,
      this.isActive,
      this.isDiscountPeriod,
      this.isSalePeriod,
      this.donationRelease,
      this.videoUrl,
      this.thumbnailUrl});

  VideoSetting.fromJson(Map<dynamic, dynamic> json)
      : id = json["videoId"],
        videoType = json["videoType"],
        saleFromDate =
            DateTime.parse(json["saleFromDate"] ?? DateTime.now().toString()),
        saleToDate =
            DateTime.parse(json["saleToDate"] ?? DateTime.now().toString()),
        discountPercent = json["discountPercent"].round(),
        discountFromDate = DateTime.parse(
            json["discountFromDate"] ?? DateTime.now().toString()),
        discountToDate =
            DateTime.parse(json["discountToDate"] ?? DateTime.now().toString()),
        donationPrice = json["donationPrice"],
        salePrice = json["salePrice"],
        createBy = json["createBy"],
        createAt =
            DateTime.parse(json["createdAt"] ?? DateTime.now().toString()),
        updateAt =
            DateTime.parse(json["updatedAt"] ?? DateTime.now().toString()),
        isActive = json["active"],
        isDiscountPeriod = json["discountPeriod"],
        isSalePeriod = json["salePeriod"],
        donationRelease = json["donationRelease"];

  late String title;
  late String desc;
  late int? id;
  late int? videoType;
  late DateTime? saleFromDate;
  late DateTime? saleToDate;
  late int? discountPercent;
  late DateTime? discountFromDate;
  late DateTime? discountToDate;
  late double? donationPrice;
  late double salePrice;
  late int? createBy;
  late DateTime? createAt;
  late int? updateBy;
  late DateTime? updateAt;
  late bool? isActive;
  late bool? isDiscountPeriod;
  late bool? isSalePeriod;
  late bool? donationRelease;
  late String? videoUrl;
  late String? thumbnailUrl;

  String get titleVideo {
    return title;
  }

  String get descVideo {
    return desc;
  }

  void set titleVideo(String title) {
    this.title = title;
  }

  void set descVideo(String desc) {
    this.desc = desc;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoTitle'] = this.title;
    data['videoDesc'] = this.desc;
    data['videoId'] = this.id;
    data['videoType'] = this.videoType;
    data['saleFromDate'] = this.saleFromDate;
    data['saleToDate'] = this.saleToDate;
    data['discountPercent'] = this.discountPercent;
    data['discountFromDate'] = this.discountFromDate;
    data['discountToDate'] = this.discountToDate;
    data['donationPrice'] = this.donationPrice;
    data['salePrice'] = this.salePrice;
    data['createBy'] = this.createBy;
    data['createAt'] = this.createAt;
    data['updateAt'] = this.updateAt;
    data['active'] = this.isActive;
    data['discountPeriod'] = this.isDiscountPeriod;
    data['salePeriod'] = this.isSalePeriod;
    data['donationRelease'] = this.donationRelease;
    return data;
  }

  Map<String, dynamic> getDataRequest() {
    return {};
  }
}
