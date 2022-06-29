import 'dart:async';

import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/amazon_s3_entity/upload_file_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_register_file_model.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_trigger_rvm_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/network_config/network_config.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArProgressingViewModel extends GetxController
    with WidgetsBindingObserver {
  late Map<String, String?> _parameters = Get.parameters;

  //Todo(SwitchScreen): Implement switch screen action.
  BuildContext? context = Get.context;
  RxBool isLoading = true.obs;
  RxString fileName = ''.obs;

  @override
  void onInit() {
    fileName.value = _parameters['filePath']!.split('/').last;

    registerUploadFile();
    super.onInit();
  }

  void registerUploadFile() {
    final RequestRegisterFileModel requestRegisterFileModel =
        new RequestRegisterFileModel(
            fileType: "video", filename: fileName.value, videoMatting: true);

    VideoRepository.instance.requestRegisterFile(
        requestRegisterFileModel: requestRegisterFileModel,
        onStart: () {},
        onSuccess: (response) {
          inProcessUploadVideo(response.s3FolderKey);
        },
        onError: (error) {});
  }

  Future<void> inProcessUploadVideo(String? s3FolderKey) async {
    final dio.FormData formData = dio.FormData.fromMap({
      "file": await dio.MultipartFile.fromFile(_parameters['filePath']!,
          filename: fileName.value),
    });
    final response = await dio.Dio().post(
        "${NetworkConfig.getBaseUrl}${HttpApi.uploadVideo}",
        data: formData,
        options: dio.Options(
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}),
        queryParameters: {'path': s3FolderKey});
    final BaseResponseEntity<UploadFileEntity> result =
        BaseResponseEntity.fromJson(response.data);

    if (result.status == true) {
      print("url_video ${result.data!.url}");
      await triggerRVM(result.data!.key);
    } else {
      await showErrorConfirmDialog(context: context!, errors: result.messages);
    }
  }

  Future<void> triggerRVM(String? key) async {
    final RequestTriggerRVMModel requestTriggerRVMModel =
        RequestTriggerRVMModel(
            inputFileS3Key: key, outputFilename: fileName.value);

    VideoRepository.instance.requestTriggerRVM(
        requestTriggerRVMModel: requestTriggerRVMModel,
        onStart: () {
          print("Loading");
        },
        onSuccess: (response) {
          goToAndRemoveAll(screen: ROUTER_MAIN);
        },
        onError: (error) {
          print(error);
        });
  }
}
