import 'package:freezed_annotation/freezed_annotation.dart';

part 'messaging_data.freezed.dart';
part 'messaging_data.g.dart';



@freezed
class MessagingData with _$MessagingData {
  const factory MessagingData({
    String? notification_type
  }) = _MessagingData;

  factory MessagingData.fromJson(Map<String, dynamic> json) =>
      _$MessagingDataFromJson(json);
}