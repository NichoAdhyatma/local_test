import 'package:json_annotation/json_annotation.dart';
import 'package:period_notification/models/product_model.dart';

part 'get_all_products_model.g.dart';

@JsonSerializable()
class GetAllProductsModel {
  final List<ProductModel>? products;
  final int? total;
  final int? skip;
  final int? limit;

  GetAllProductsModel({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllProductsModelToJson(this);
}
