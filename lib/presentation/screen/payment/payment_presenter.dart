import 'dart:async';
import 'dart:convert';

import 'package:diamon_rose_app/data/config/config.dart';
import 'package:diamon_rose_app/data/repositiory/payment_repository/payment_repository.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/domain/entities/request/payment_request/request_checkout_model.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/payment_widget.dart';
import 'package:diamon_rose_app/presentation/screen/login/login.validate.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PaymentPresenter extends GetxController {
  RxBool firtPayment = false.obs;
  final context = Get.context;
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cCVController = TextEditingController();
  CardDetails cardDetails = CardDetails();
  RxBool isValidation = false.obs;
  RxBool isShowToolTrip = false.obs;

  late List<int> itemIds = Get.arguments;

  @override
  void onInit() {
    initInformationCardDetail();
    handlePayPress();
    super.onInit();
  }

  void initInformationCardDetail() {
    firtPayment.value = AppData().userInfo.firstPayment;
    initPaymentSheet();
    cardDetails = cardDetails.copyWith(
      number: AppData().paymentData.cardNumber,
      cvc: AppData().paymentData.cvc,
      expirationMonth: AppData().paymentData.expirationMonth,
      expirationYear: AppData().paymentData.expirationYear,
    );
    update();
  }

  void showTooltrip() {
    isShowToolTrip.value = !isShowToolTrip.value;
    update();
  }

  void paymentValidate() {
    final validationResults = LoginValidationResults(context!);

    final nameInput = nameController.text;
    final numberInput = numberController.text;
    final dateInput = dateController.text;
    final cCVInput = cCVController.text;

    if (!validationResults.validatePaymentForm(
        username: nameInput,
        numberPayment: numberInput,
        ccv: cCVInput,
        date: dateInput)) {
      isValidation.value = true;
    } else {
      isValidation.value = false;
      goTo(screen: ROUTER_MAIN);
    }
    update();
  }

  Future<void> confirmPayment() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } on Exception catch (e) {
      if (e is StripeException) {
        ScaffoldMessenger.of(context!).showSnackBar(
          SnackBar(
            content: Text('Error from Stripe: ${e.error.localizedMessage}'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context!).showSnackBar(
          SnackBar(
            content: Text('Unforeseen error: ${e}'),
          ),
        );
      }
      print('Error: $e');
    }
  }

  Future<void> handlePayPress() async {
    await Stripe.instance.dangerouslyUpdateCardDetails(cardDetails);

    try {
      // 1. Gather customer billing information (ex. email)
      final billingDetails = BillingDetails(
        email: 'laup@gmail.com',
        phone: '+8456978808',
        address: Address(
          city: 'HCM',
          country: 'US',
          line1: '1459  Circle Drive',
          line2: '',
          state: 'Texas',
          postalCode: '77063',
        ),
      );

      // 2. Create payment method
      final paymentMethod =
          await Stripe.instance.createPaymentMethod(PaymentMethodParams.card(
        billingDetails: billingDetails,
      ));

      // 3. call API to create PaymentIntent
      final paymentIntentResult = await callNoWebhookPayEndpointMethodId(
        useStripeSdk: true,
        paymentMethodId: paymentMethod.id,
        currency: 'usd', // mocked data
        items: [
          {'id': 'id'}
        ],
      );
      if (paymentIntentResult['error'] != null) {
        // Error during creating or confirming Intent
        ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
          content: Text('test'),
        ));
        return;
      }

      if (paymentIntentResult['clientSecret'] != null &&
          paymentIntentResult['requiresAction'] == null) {
        // Payment succedeed

        print('Success!: The payment was confirmed successfully!');
        return;
      }

      if (paymentIntentResult['clientSecret'] != null &&
          paymentIntentResult['requiresAction'] == true) {
        // 4. if payment requires action calling handleCardAction
        final paymentIntent = await Stripe.instance
            .handleCardAction(paymentIntentResult['clientSecret']);

        if (paymentIntent.status == PaymentIntentsStatus.RequiresConfirmation) {
          // 5. Call API to confirm intent
          await confirmIntent(paymentIntent.id);
        } else {
          ScaffoldMessenger.of(context!).showSnackBar(
            SnackBar(
              content: Text('test'),
            ),
          );
          // Payment succedeed
          print('Error: ${paymentIntentResult['error']}');
        }
      }
    } on Exception catch (e) {
      print('Error: $e');
    }
  }

  Future<void> initPaymentSheet() async {
    try {
      // 1. create payment intent on the server
      final data = await _createTestPaymentSheet();

      // 2. initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          // Main params
          paymentIntentClientSecret: data['paymentIntent'],
          merchantDisplayName: 'Flutter Stripe Store Demo',
          // Customer params
          customerId: data['customer'],
          customerEphemeralKeySecret: data['ephemeralKey'],
          // Extra params
          applePay: true,
          googlePay: true,
          style: ThemeMode.dark,
          testEnv: true,
          merchantCountryCode: 'DE',
        ),
      );
    } on Exception catch (e) {
      print('Error: $e');
    }
  }

  Future<Map<String, dynamic>> _createTestPaymentSheet() async {
    final url = Uri.parse('$kApiUrl/payment-sheet');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'a': 'a',
      }),
    );
    final body = json.decode(response.body);
    if (body['error'] != null) {
      throw Exception(body['error']);
    }
    return body;
  }

  Future<void> confirmIntent(String paymentIntentId) async {
    final result = await callNoWebhookPayEndpointIntentId(
        paymentIntentId: paymentIntentId);
    if (result['error'] != null) {
      print('Error: ${result['error']}');
    } else {
      print('Success!: The payment was confirmed successfully!');
    }
  }

  Future<Map<String, dynamic>> callNoWebhookPayEndpointIntentId({
    required String paymentIntentId,
  }) async {
    final url = Uri.parse('$kApiUrl/charge-card-off-session');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({'paymentIntentId': paymentIntentId}),
    );
    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> callNoWebhookPayEndpointMethodId({
    required bool useStripeSdk,
    required String paymentMethodId,
    required String currency,
    List<Map<String, dynamic>>? items,
  }) async {
    final url = Uri.parse('$kApiUrl/pay-without-webhooks');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'useStripeSdk': useStripeSdk,
        'paymentMethodId': paymentMethodId,
        'currency': currency,
        'items': items
      }),
    );
    return json.decode(response.body);
  }

  Future<void> checkout() async {
    PaymentRepository.instance.checkout(
        data: RequestCheckoutModel(shoppingCartItems: itemIds),
        onStart: () {},
        onSuccess: (response) {
          presentPaymentSheet(
              context!, response.stripePublicKey, response.clientSecret);
        },
        onError: (error) {
          unawaited(showSnackBar(
              message: error[0], snackBarType: SnackBarType.danger));
        });
  }
}
