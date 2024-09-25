// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) =>
    PaymentRequest(
      paymentType: json['payment_type'] as String?,
      transactionDetails: json['transaction_details'] == null
          ? null
          : TransactionDetails.fromJson(
              json['transaction_details'] as Map<String, dynamic>),
      creditCard: json['credit_card'] == null
          ? null
          : CreditCard.fromJson(json['credit_card'] as Map<String, dynamic>),
      itemDetails: (json['item_details'] as List<dynamic>?)
          ?.map((e) => ItemDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      bankTransfer: json['bank_transfer'] == null
          ? null
          : BankTransfer.fromJson(
              json['bank_transfer'] as Map<String, dynamic>),
      customerDetails: json['customer_details'] == null
          ? null
          : CustomerDetails.fromJson(
              json['customer_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentRequestToJson(PaymentRequest instance) =>
    <String, dynamic>{
      'payment_type': instance.paymentType,
      'transaction_details': instance.transactionDetails,
      'credit_card': instance.creditCard,
      'item_details': instance.itemDetails,
      'bank_transfer': instance.bankTransfer,
      'customer_details': instance.customerDetails,
    };

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) =>
    TransactionDetails(
      orderId: json['order_id'] as String?,
      grossAmount: (json['gross_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TransactionDetailsToJson(TransactionDetails instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'gross_amount': instance.grossAmount,
    };

CreditCard _$CreditCardFromJson(Map<String, dynamic> json) => CreditCard(
      tokenId: json['token_id'] as String?,
      authentication: json['authentication'] as bool?,
    );

Map<String, dynamic> _$CreditCardToJson(CreditCard instance) =>
    <String, dynamic>{
      'token_id': instance.tokenId,
      'authentication': instance.authentication,
    };

ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) => ItemDetails(
      id: json['id'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ItemDetailsToJson(ItemDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'name': instance.name,
    };

BankTransfer _$BankTransferFromJson(Map<String, dynamic> json) => BankTransfer(
      bank: json['bank'] as String?,
    );

Map<String, dynamic> _$BankTransferToJson(BankTransfer instance) =>
    <String, dynamic>{
      'bank': instance.bank,
    };

CustomerDetails _$CustomerDetailsFromJson(Map<String, dynamic> json) =>
    CustomerDetails(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      billingAddress: json['billing_address'] == null
          ? null
          : BillingAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDetailsToJson(CustomerDetails instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
    };

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) =>
    BillingAddress(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      postalCode: json['postal_code'] as String?,
      countryCode: json['country_code'] as String?,
    );

Map<String, dynamic> _$BillingAddressToJson(BillingAddress instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'country_code': instance.countryCode,
    };

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) =>
    ShippingAddress(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      postalCode: json['postal_code'] as String?,
      countryCode: json['country_code'] as String?,
    );

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'country_code': instance.countryCode,
    };
