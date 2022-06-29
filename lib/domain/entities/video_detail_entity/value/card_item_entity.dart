import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_item_entity.freezed.dart';
part 'card_item_entity.g.dart';

@freezed
class CardItemEntity with _$CardItemEntity {
  const factory CardItemEntity({
    @Default(0) int videoId,
    @Default("") String quantity,
    @Default("") String totalPrice,
  }) = _CardItemEntity;

  factory CardItemEntity.fromJson(Map<String, dynamic> json) =>
      _$CardItemEntityFromJson(json);
}
