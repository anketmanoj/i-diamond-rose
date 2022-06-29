class Payment {
  Payment({
    required this.id,
    required this.userName,
    required this.expirationMonth,
    required this.cvc,
    required this.cardNumber,
    required this.expirationYear,
    required this.country,
    required this.postalCode,
  });

  Payment.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        userName = json['userName'],
        expirationMonth = json['expirationMonth'],
        cvc = json['cvc'],
        cardNumber = json['cardNumber'],
        expirationYear = json['expirationYear'],
        country = json['country'],
        postalCode = json['postalCode'];

  String id;
  String userName;
  int expirationMonth;
  String cvc;
  String cardNumber;
  int expirationYear;
  String country;
  String postalCode;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['expirationMonth'] = this.expirationMonth;
    data['expirationYear'] = this.expirationYear;
    data['cvc'] = this.cvc;
    data['cardNumber'] = this.cardNumber;
    data['country'] = this.country;
    data['postalCode'] = this.postalCode;

    return data;
  }
}
