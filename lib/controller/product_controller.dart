import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:period_notification/remote/product_remote.dart';

class ProductController extends GetxController {
  final ProductRemote _client = createProductRemoteClient();
  final CancelToken _cancelToken = CancelToken();

  @override
  void onClose() {
    super.onClose();
    _cancelToken.cancel();
  }

  Future<void> getAllProducts() async {
    try {
      final result = await _client.getAllProducts(_cancelToken, 10, 0);
      log(result.products.toString());
    } catch (e) {
      rethrow;
    }
  }
}
