import 'package:diamon_rose_app/domain/entities/amazon_s3_entity/upload_file_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_item_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/ar_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/background_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/effect_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/purchase_history.dart';
import 'package:diamon_rose_app/domain/entities/comment_entity/comment_video_entity.dart';
import 'package:diamon_rose_app/domain/entities/common_entity/country_entity.dart';
import 'package:diamon_rose_app/domain/entities/favorite_entity/favorite_model.dart';
import 'package:diamon_rose_app/domain/entities/font_entity/font_entity.dart';
import 'package:diamon_rose_app/domain/entities/genre_entity/genre_entity.dart';
import 'package:diamon_rose_app/domain/entities/my_ar_entity/my_ar_entity.dart';
import 'package:diamon_rose_app/domain/entities/payment_intent_entity/checkout_entity.dart';
import 'package:diamon_rose_app/domain/entities/payment_intent_entity/checkout_response.dart';
import 'package:diamon_rose_app/domain/entities/payment_intent_entity/order_entity.dart';
import 'package:diamon_rose_app/domain/entities/payment_intent_entity/payment_intent_entity.dart';
import 'package:diamon_rose_app/domain/entities/purchase_history/purchase_history_model.dart';
import 'package:diamon_rose_app/domain/entities/request/block_item/block_item_model.dart';
import 'package:diamon_rose_app/domain/entities/request/event_video_request/event_video_model.dart';
import 'package:diamon_rose_app/domain/entities/request/noti_request/noti_item_model.dart';
import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/cart_item_entity.dart';
import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/cart_list_model.dart';
import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/shopping_cart_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/otp_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_total_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_create_entity/video_create_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_item_detail_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/video_detail_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/my_video_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/register_file_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_dto_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_following_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_profile_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_setting_entity.dart';
import 'package:diamon_rose_app/domain/entities/wk_video_entity/my_draft_video_entity.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';

class EntityFactory {
  static T? generateOBJ<T>(dynamic json) {
    if (ValidateUtils.isEmpty(json)) {
      return null;
    }

    switch (T.toString()) {
      case "BaseResponseEntity":
        return BaseResponseEntity.fromJson(json) as T;
      case "BaseResponseEntity<CheckoutResponse>":
        return BaseResponseEntity<CheckoutResponse>.fromJson(json) as T;
      case "BaseListResponseEntity<FontEntity>":
        return BaseListResponseEntity<FontEntity>.fromJson(json) as T;
      case "BaseItemResponseEntity":
        return BaseItemResponseEntity.fromJson(json) as T;
      case "BaseResponseEntity<UserContentModel>":
        return BaseResponseEntity<UserContentModel>.fromJson(json) as T;
      case "BaseListResponseEntity<NotificationItemModel>":
        return BaseListResponseEntity<NotificationItemModel>.fromJson(json)
            as T;
      case "BaseItemResponseEntity<VideoDetailEntity>":
        return BaseItemResponseEntity<VideoDetailEntity>.fromJson(json) as T;
      case "BaseItemResponseEntity<VideoFollowingEntity>":
        return BaseItemResponseEntity<VideoFollowingEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<CountryEntity>":
        return BaseListResponseEntity<CountryEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<VideoEntity>":
        return BaseListResponseEntity<VideoEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<CommentVideoEntity>":
        return BaseListResponseEntity<CommentVideoEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<GenreEntity>":
        return BaseListResponseEntity<GenreEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<MyAREntity>":
        return BaseListResponseEntity<MyAREntity>.fromJson(json) as T;
      case "BaseListResponseEntity<EffectEntity>":
        return BaseListResponseEntity<EffectEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<BackgroundEntity>":
        return BaseListResponseEntity<BackgroundEntity>.fromJson(json) as T;
      case "BaseItemResponseEntity<CartListModel>":
        return BaseItemResponseEntity<CartListModel>.fromJson(json) as T;
      case "BaseItemResponseEntity<CommentVideoEntity>":
        return BaseItemResponseEntity<CommentVideoEntity>.fromJson(json) as T;
      case "BaseItemResponseEntity<FavoriteModel>":
        return BaseItemResponseEntity<FavoriteModel>.fromJson(json) as T;
      case "BaseListResponseEntity<FavoriteModel>":
        return BaseListResponseEntity<FavoriteModel>.fromJson(json) as T;
      case "BaseListResponseEntity<MyDraftVideoEntity>":
        return BaseListResponseEntity<MyDraftVideoEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<VideoFollowingEntity>":
        return BaseListResponseEntity<VideoFollowingEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<PurchaseHistory>":
        return BaseListResponseEntity<PurchaseHistory>.fromJson(json) as T;
      case "BaseItemResponseEntity<UserContentModel>":
        return BaseItemResponseEntity<UserContentModel>.fromJson(json) as T;
      case "BaseItemResponseEntity<VideoEntity>":
        return BaseItemResponseEntity<VideoEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<PurchaseHistoryModel>":
        return BaseListResponseEntity<PurchaseHistoryModel>.fromJson(json) as T;
      case "BaseListResponseEntity<AREntity>":
        return BaseListResponseEntity<AREntity>.fromJson(json) as T;
      case "BaseItemResponseEntity<UserTotalContentModel>":
        return BaseItemResponseEntity<UserTotalContentModel>.fromJson(json)
            as T;
      case "BaseResponseEntity<UploadFileEntity>":
        return BaseResponseEntity<UploadFileEntity>.fromJson(json) as T;
      case "BaseResponseEntity<EventVideoModel>":
        return BaseResponseEntity<EventVideoModel>.fromJson(json) as T;
      case "BaseResponseEntity<VideoItemDetailEntity>":
        return BaseResponseEntity<VideoItemDetailEntity>.fromJson(json) as T;
      case "BaseResponseEntity<VideoDetailEntity>":
        return BaseResponseEntity<VideoDetailEntity>.fromJson(json) as T;
      case "BaseResponseEntity<RegisterFileEntity>":
        return BaseResponseEntity<RegisterFileEntity>.fromJson(json) as T;
      case "BaseResponseEntity<BaseItemResponseEntity>":
        return BaseResponseEntity<BaseItemResponseEntity>.fromJson(json) as T;
      case "BaseItemResponseEntity<VideoCreateEntity>":
        return BaseItemResponseEntity<VideoCreateEntity>.fromJson(json) as T;
      case "BaseListResponseEntity<BlockUserItemModel>":
        return BaseListResponseEntity<BlockUserItemModel>.fromJson(json) as T;
      case "BaseListResponseEntity<VideoProfileEntity>":
        return BaseListResponseEntity<VideoProfileEntity>.fromJson(json) as T;
      case "CartListModel": //
        return CartListModel.fromJson(json) as T;
      case "CheckoutResponse":
        return CheckoutResponse.fromJson(json) as T;
      case "CheckoutEntity": //
        return CheckoutEntity.fromJson(json) as T;
      case "OrderEntity": //
        return OrderEntity.fromJson(json) as T;
      case "CountryEntity":
        return CountryEntity.fromJson(json) as T;
      case "PaymentIntentEntity": //
        return PaymentIntentEntity.fromJson(json) as T;
      case "VideoDetailEntity":
        return VideoDetailEntity.fromJson(json) as T;
      case "VideoItemDetailEntity":
        return VideoItemDetailEntity.fromJson(json) as T;
      case "FavoriteModel":
        return FavoriteModel.fromJson(json) as T;
      case "FontEntity":
        return FontEntity.fromJson(json) as T;
      case "UploadFileEntity":
        return UploadFileEntity.fromJson(json) as T;
      case "NotificationItemModel":
        return NotificationItemModel.fromJson(json) as T;
      case "UserEntity":
        return UserEntity.fromJson(json) as T;
      case "VideoProfileEntity":
        return VideoProfileEntity.fromJson(json) as T;
      case "VideoDTOEntity":
        return VideoDTOEntity.fromJson(json) as T;
      case "VideoEntity":
        return VideoEntity.fromJson(json) as T;
      case "GenreEntity":
        return GenreEntity.fromJson(json) as T;
      case "VideoFollowingEntity":
        return VideoFollowingEntity.fromJson(json) as T;
      case "VideoSettingEntity":
        return VideoSettingEntity.fromJson(json) as T;
      case "RegisterFileEntity":
        return RegisterFileEntity.fromJson(json) as T;
      case "UserContentModel":
        return UserContentModel.fromJson(json) as T;
      case "UserTotalContentModel":
        return UserTotalContentModel.fromJson(json) as T;
      case "OTPEntity":
        return OTPEntity.fromJson(json) as T;
      case "BackgroundEntity":
        return BackgroundEntity.fromJson(json) as T;
      case "AREntity":
        return AREntity.fromJson(json) as T;
      case "PurchaseHistory":
        return PurchaseHistory.fromJson(json) as T;
      case "PurchaseHistoryModel":
        return PurchaseHistoryModel.fromJson(json) as T;
      case "EventVideoModel":
        return EventVideoModel.fromJson(json) as T;
      case "EffectEntity":
        return EffectEntity.fromJson(json) as T;
      case "CommentVideoEntity":
        return CommentVideoEntity.fromJson(json) as T;
      case "MyAREntity":
        return MyAREntity.fromJson(json) as T;
      case "VideoCreateEntity":
        return VideoCreateEntity.fromJson(json) as T;
      case "BlockUserItemModel":
        return BlockUserItemModel.fromJson(json) as T;
      case "ShoppingCartModel": //
        return ShoppingCartModel.fromJson(json) as T;
      case "CartItemEntity": //
        return CartItemEntity.fromJson(json) as T;
      case "VideoItemDetailEntity":
        return VideoItemDetailEntity.fromJson(json) as T;
      case "MyDraftVideoEntity":
        return MyDraftVideoEntity.fromJson(json) as T;
      case "MyVideoEntity":
        return MyVideoEntity.fromJson(json) as T;
      default:
        return json as T;
    }
  }
}
