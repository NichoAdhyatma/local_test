import 'package:json_annotation/json_annotation.dart';

part 'transaction_status.g.dart';

@JsonSerializable()
class TransactionStatusModel {
  @JsonKey(name: 'status_code')
  String? statusCode;

  @JsonKey(name: 'transaction_id')
  String? transactionId;

  @JsonKey(name: 'gross_amount')
  String? grossAmount;

  String? currency;

  @JsonKey(name: 'order_id')
  String? orderId;

  @JsonKey(name: 'payment_type')
  String? paymentType;

  @JsonKey(name: 'signature_key')
  String? signatureKey;

  @JsonKey(name: 'transaction_status')
  String? transactionStatus;

  @JsonKey(name: 'fraud_status')
  String? fraudStatus;

  @JsonKey(name: 'status_message')
  String? statusMessage;

  @JsonKey(name: 'merchant_id')
  String? merchantId;

  @JsonKey(name: 'transaction_time')
  String? transactionTime;

  @JsonKey(name: 'expiry_time')
  String? expiryTime;

  TransactionStatusModel({
    this.statusCode,
    this.transactionId,
    this.grossAmount,
    this.currency,
    this.orderId,
    this.paymentType,
    this.signatureKey,
    this.transactionStatus,
    this.fraudStatus,
    this.statusMessage,
    this.merchantId,
    this.transactionTime,
    this.expiryTime,
  });

  // JSON serialization and deserialization methods
  factory TransactionStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatusModelToJson(this);
}
