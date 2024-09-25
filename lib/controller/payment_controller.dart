import 'package:get/get.dart';
import 'package:period_notification/models/payment_request.dart';
import 'package:period_notification/pages/payment_webview.dart';
import 'package:period_notification/remote/payment_remote.dart';

class PaymentController extends GetxController {
  final PaymentRemote client = createPaymentRemoteClient();

  Future<void> createPaymentSnap(PaymentRequest paymentRequest) async {
    try {
      final result = await client.snap(paymentRequest);

      Get.toNamed(PaymentWebview.routeName, arguments: result.redirectUrl);
    } catch (e) {
      rethrow;
    }
  }
}
