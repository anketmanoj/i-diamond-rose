import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_trigger_rvm_model.freezed.dart';
part 'request_trigger_rvm_model.g.dart';
@freezed
class RequestTriggerRVMModel with _$RequestTriggerRVMModel {
  const factory RequestTriggerRVMModel({
    required String? inputFileS3Key,
    required String? outputFilename
  }) = _RequestTriggerRVMModel;

  factory RequestTriggerRVMModel.fromJson(Map<String, dynamic> json) =>
      _$RequestTriggerRVMModelFromJson(json);
}