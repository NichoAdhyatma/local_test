// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllProductsModel _$GetAllProductsModelFromJson(Map<String, dynamic> json) =>
    GetAllProductsModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      skip: (json['skip'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
        GetAllProductsModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
