class PaymentCard {
  String number;
  String name;
  int month;
  int year;
  int cvv;
  bool isUse;

  // ignore: sort_constructors_first
  PaymentCard(
      {required this.number,
      required this.name,
      required this.month,
      required this.year,
      required this.cvv,
      required this.isUse});
}
