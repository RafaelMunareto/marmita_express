import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../repositories/localstorage/local_storage_interface.dart';
import '../repositories/localstorage/local_storage_share.dart';

class DioStruture {
  final ILocalStorage storage = LocalStorageShare();
  final baseUrl =
      'https://apphackaixades.azurewebsites.net/api/'; //web desktop local 'http://localhost:3333/ app 'http://10.0.2.2:3333/' prod 'http://api.munatask.com/''
  List<String> localStorage = [];
  String token = '';
  dioAction() async {
    localStorage = await storage.get('token');
    token = localStorage.isNotEmpty ? localStorage[0] : '';

    return Dio(BaseOptions(
        baseUrl: baseUrl, headers: {"Authorization": 'Bearer $token'}));
  }

  statusRequest(response) {
    if (kDebugMode) {
      print(
        response.statusCode.toString() +
            ' ' +
            response.statusMessage.toString() +
            ' ' +
            response.realUri.toString(),
      );
    }
  }
}
