import 'package:dio/dio.dart';
import 'package:period_notification/models/payment_request.dart';
import 'package:period_notification/models/snap.dart';
import 'package:period_notification/models/transaction_status.dart';
import 'package:period_notification/remote/config.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_remote.g.dart';

@RestApi()
abstract class PaymentRemote {
  factory PaymentRemote(Dio dio, {String baseUrl}) = _PaymentRemote;

  static PaymentRemote create({
    Map<String, dynamic> headers = const {},
    int connectTimeout = 30000,
    int receiveTimeout = 30000,
  }) {
    Map<String, dynamic> finalHeaders = {
      ...Config.baseHeaders,
      ...headers,
    };

    Dio dio = Dio(BaseOptions(
      connectTimeout: Duration(milliseconds: connectTimeout),
      receiveTimeout: Duration(milliseconds: receiveTimeout),
      headers: finalHeaders,
    ));

    return PaymentRemote(
      dio,
      baseUrl: Config.baseUrl,
    );
  }

  @POST('/snap')
  Future<SnapModel> snap(@Body() PaymentRequest body);

  @GET('/payment/status/{order_id}')
  Future<TransactionStatusModel> getTransactionStatus(@Path('order_id') String orderId);
}

const createPaymentRemoteClient = PaymentRemote.create;
