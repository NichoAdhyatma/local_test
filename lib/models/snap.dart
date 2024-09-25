import 'package:json_annotation/json_annotation.dart';

part 'snap.g.dart';

@JsonSerializable()
class SnapModel {
  final String ? token;
  @JsonKey(name: 'redirect_url')
  final String ? redirectUrl;

  SnapModel({
    this.token,
    this.redirectUrl,
  });

  factory SnapModel.fromJson(Map<String, dynamic> json) => _$SnapModelFromJson(json);
}