import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/payment_intent_entity/checkout_response.dart';
import 'package:diamon_rose_app/domain/entities/payment_intent_entity/payment_intent_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/payment_request/request_checkout_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class PaymentRepository {
  PaymentRepository._();

  static final PaymentRepository _instance = PaymentRepository._();

  static PaymentRepository get instance => _instance;

  void checkout(
      {required RequestCheckoutModel data,
      required HttpRequestCallBack onStart,
      required HttpCallBack<PaymentIntentEntity> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.checkout}";

    HttpRequest.getInstance()?.post<BaseResponseEntity, CheckoutResponse>(
      url,
      data: BaseRequestEntity(data: data.toJson()).encode(),
      onStart: onStart,
      onSuccess: (data) async {
        final paymentIntent = data.response!.paymentIntent;
        await onSuccess(paymentIntent!);
      },
      onError: onError,
    );
  }
}
