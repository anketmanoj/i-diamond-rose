import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_entity.freezed.dart';
part 'otp_entity.g.dart';

@freezed
class OTPEntity with _$OTPEntity {
  const factory OTPEntity({
    @Default(0) int tmpUserId,
    String? email,
  }) = _OTPEntity;

  factory OTPEntity.fromJson(Map<String, dynamic> json) =>
      _$OTPEntityFromJson(json);
}
