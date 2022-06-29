import 'package:diamon_rose_app/domain/entities/base/base_item_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/shopping_cart/request_shopping_cart.dart';
import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/cart_list_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class ShoppingCartRepository {
  ShoppingCartRepository._();

  static final ShoppingCartRepository _instance = ShoppingCartRepository._();

  static ShoppingCartRepository get instance => _instance;

  Future<void> getShoppingCarts(
      {required HttpRequestCallBack onStart,
      required HttpCallBack<BaseItemResponseEntity<CartListModel>> onSuccess,
      required HttpCallBack<List<String>>? onError}) async {
    final url = HttpApi.getShoppingCarts;

    await HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseItemResponseEntity<CartListModel>>(
      url,
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void deleteShoppingCartId(
      {required int id,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.shoppingCart}/$id";

    HttpRequest.getInstance()?.delete<BaseResponseEntity<String>, dynamic>(url,
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
        reLoginCallBack: (response) {});
  }

  Future<void> requestAddShoppingCart(
      {required RequestShoppingCart requestShoppingCartModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) async {
    final url = HttpApi.shoppingCart;
    await HttpRequest.getInstance()?.post<BaseResponseEntity<String>, dynamic>(
        url,
        data:
            BaseRequestEntity(data: requestShoppingCartModel.toJson()).encode(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void countCartItems(
      {required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.countCartItems;

    HttpRequest.getInstance()?.get<BaseResponseEntity, Map<String, dynamic>>(
      url,
      onStart: onStart,
      onSuccess: (data) async {
        await onSuccess(data['totalItemInCart']);
      },
      onError: onError,
    );
  }
}
