import 'package:dio/dio.dart';
import 'package:period_notification/models/payment_request.dart';
import 'package:period_notification/models/snap.dart';
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
    Map<String, dynamic> baseHeader = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      ...headers,
    };

    Dio dio = Dio(BaseOptions(
      connectTimeout: Duration(milliseconds: connectTimeout),
      receiveTimeout: Duration(milliseconds: receiveTimeout),
      headers: baseHeader,
    ));

    return PaymentRemote(
      dio,
      baseUrl: Config.baseUrl,
    );
  }

  @POST('/snap')
  Future<SnapModel> snap(@Body() PaymentRequest body);
}

const createPaymentRemoteClient = PaymentRemote.create;
