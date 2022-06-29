import 'package:diamon_rose_app/presentation/screen/payment/model/payment_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PaymentTypeScreen extends StatelessWidget {
  final List<PaymentCard> listCard = [
    PaymentCard(
        number: "1234567899",
        name: "abc",
        month: 2019,
        year: 20,
        cvv: 78,
        isUse: true),
    PaymentCard(
        number: "9876543211",
        name: "xyz",
        month: 2019,
        year: 20,
        cvv: 78,
        isUse: false)
  ];

  String getNewNumber(String number) {
    final String newNumber = number.substring(number.length - 4, number.length);
    return newNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Localy.of(context)!.paymentTypeMenu,
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.greyDark),
          onPressed: Get.back,
        ),
      ),
      body: _bodyPaymentType(context),
    );
  }

  List<DropdownMenuItem> _getListDropDownItem(BuildContext context) {
    final list = <DropdownMenuItem>[];
    <String>[
      Localy.of(context)!.dropdownPaymentApply,
      Localy.of(context)!.dropdownPaymentDelete
    ].asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: index,
        child: Text(
          value,
          style: TextStyle(color: index == 1 ? AppColors.red : AppColors.black),
        ),
      ));
    });
    return list;
  }

  Widget _bodyPaymentType(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listCard.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(right: 0, left: 0),
                  leading: Image.asset(
                    "assets/images/visa.jpg",
                    height: 18,
                    width: 55,
                  ),
                  title: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.brightness_1,
                          size: 12,
                          color: AppColors.black,
                        ),
                        Icon(
                          Icons.brightness_1,
                          size: 12,
                          color: AppColors.black,
                        ),
                        Icon(
                          Icons.brightness_1,
                          size: 12,
                          color: AppColors.black,
                        ),
                        Icon(
                          Icons.brightness_1,
                          size: 12,
                          color: AppColors.black,
                        ),
                        Icon(
                          Icons.brightness_1,
                          size: 12,
                          color: AppColors.black,
                        ),
                        Icon(
                          Icons.brightness_1,
                          size: 12,
                          color: AppColors.black,
                        ),
                        Text(
                          getNewNumber(listCard[index].number),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  trailing: listCard[index].isUse == true
                      ? Icon(
                          Icons.check,
                          size: 24,
                          color: AppColors.green,
                        )
                      : Container(
                          height: 24,
                          width: 100,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              // style: TextStyle(color: AppColors.white),
                              dropdownColor: AppColors.white,
                              focusColor: AppColors.white,
                              iconEnabledColor: AppColors.white,
                              isExpanded: true,
                              icon: Icon(
                                Icons.more_vert,
                                size: 24,
                                color: AppColors.greyDark,
                              ),
                              items: _getListDropDownItem(context),
                              onChanged: (dynamic value) => {
                                print(value)
                              },
                            ),
                          ),
                        ),
                );
              },
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                color: AppColors.purple01,
              )),
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: 13, right: 13),
                  leading: SvgPicture.asset(
                      "assets/images/svg/credit_card_icon.svg",
                      height: 35,
                      width: 35),
                  title: Text(
                    Localy.of(context)!.addCreditCard,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.purple01),
                  )),
            ),
          ],
        ));
  }
}
