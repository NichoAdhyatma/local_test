import 'package:dio/dio.dart';
import 'package:period_notification/models/get_all_products_model.dart';
import 'package:period_notification/remote/config.dart';
import 'package:retrofit/retrofit.dart';

part 'product_remote.g.dart';

@RestApi()
abstract class ProductRemote {
  factory ProductRemote(Dio dio, {String baseUrl}) = _ProductRemote;

  static ProductRemote create({
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

    return ProductRemote(
      dio,
      baseUrl: Config.dummyJsonBaseUrl,
    );
  }

  @GET('/products')
  Future<GetAllProductsModel> getAllProducts(
      @CancelRequest() CancelToken cancelToken,
      @Query('limit') int limit,
      @Query('skip') int skip,
      );
}

const createProductRemoteClient = ProductRemote.create;
