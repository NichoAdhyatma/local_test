import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:period_notification/models/payment_request.dart';
import 'package:period_notification/pages/payment_webview.dart';
import 'package:period_notification/pages/success_payment.dart';
import 'package:period_notification/remote/payment_remote.dart';

class PaymentController extends GetxController {
  final PaymentRemote client = createPaymentRemoteClient();
  final RxnString orderId = RxnString();
  Timer? _timer;

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void startPeriodicTransactionStatusCheck() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      getTransactionStatus();
    });
  }

  Future<void> createPaymentSnap(PaymentRequest paymentRequest) async {
    try {
      orderId.value = paymentRequest.transactionDetails?.orderId;

      final result = await client.snap(paymentRequest);

      if(result.redirectUrl == null) {
        throw Exception("Failed to create payment snap");
      }

      Get.toNamed(
        PaymentWebview.routeName,
        arguments: result.redirectUrl,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> getTransactionStatus() async {
    try {
      final result = await client.getTransactionStatus(orderId.value ?? "");

      log("Transaction Status: ${result.transactionStatus}");

      if (result.transactionStatus == 'settlement') {
        _timer?.cancel();
        Get.offAllNamed(SuccessPaymentPage.routeName);
      }
    } catch (e) {
      rethrow;
    }
  }
}
