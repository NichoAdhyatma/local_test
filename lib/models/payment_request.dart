import 'package:json_annotation/json_annotation.dart';

part 'payment_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentRequest {
  final String? paymentType;
  final TransactionDetails? transactionDetails;
  final CreditCard? creditCard;
  final List<ItemDetails>? itemDetails;
  final BankTransfer? bankTransfer;
  final CustomerDetails? customerDetails;

  PaymentRequest({
    this.paymentType,
    this.transactionDetails,
    this.creditCard,
    this.itemDetails,
    this.bankTransfer,
    this.customerDetails,
  });

  factory PaymentRequest.fromJson(Map<String, dynamic> json) => _$PaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionDetails {
  final String? orderId;
  final double? grossAmount;

  TransactionDetails({
    this.orderId,
    this.grossAmount,
  });

  factory TransactionDetails.fromJson(Map<String, dynamic> json) => _$TransactionDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreditCard {
  final String? tokenId;
  final bool? authentication;

  CreditCard({
    this.tokenId,
    this.authentication,
  });

  factory CreditCard.fromJson(Map<String, dynamic> json) => _$CreditCardFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItemDetails {
  final String? id;
  final double? price;
  final int? quantity;
  final String? name;

  ItemDetails({
    this.id,
    this.price,
    this.quantity,
    this.name,
  });

  factory ItemDetails.fromJson(Map<String, dynamic> json) => _$ItemDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BankTransfer {
  final String? bank;

  BankTransfer({
    this.bank,
  });

  factory BankTransfer.fromJson(Map<String, dynamic> json) => _$BankTransferFromJson(json);

  Map<String, dynamic> toJson() => _$BankTransferToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerDetails {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final BillingAddress? billingAddress;
  final ShippingAddress? shippingAddress;

  CustomerDetails({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.billingAddress,
    this.shippingAddress,
  });

  factory CustomerDetails.fromJson(Map<String, dynamic> json) => _$CustomerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BillingAddress {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? address;
  final String? city;
  final String? postalCode;
  final String? countryCode;

  BillingAddress({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.address,
    this.city,
    this.postalCode,
    this.countryCode,
  });

  factory BillingAddress.fromJson(Map<String, dynamic> json) => _$BillingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$BillingAddressToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ShippingAddress {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? address;
  final String? city;
  final String? postalCode;
  final String? countryCode;

  ShippingAddress({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.address,
    this.city,
    this.postalCode,
    this.countryCode,
  });

  factory ShippingAddress.fromJson(Map<String, dynamic> json) => _$ShippingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);
}
