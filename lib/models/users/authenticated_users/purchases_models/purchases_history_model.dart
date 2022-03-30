import 'dart:convert';

import 'package:twa_models/models/ecom/products_models/product_model.dart';
import 'package:twa_models/models/users/authenticated_users/addresses_models/address_model.dart';
import 'package:twa_models/models/users/cart_models/cart_model.dart';

class PurchaseHistory {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int ecom_users_id;
  final int countries_id;
  final double total;
  final String payment_type;
  final String tracking_number;
  final String status;
  final String waybill_link;
  final ItemsFirt itemsFirt;
  final AddressModel shipping_address_details;
  final AddressModel billing_address_details;
  final String voucher_details;
  final Currency_details currency_details;
  final String checkout_details;
  // final String ecom_vouchers_id;
  final Cms_attributespurchaseHistory cms_attributespurchaseHistory;
  final int ecom_stores_id;
  final int ecom_stores_payment_methods_id;
  final int ecom_stores_delivery_id;
  final String date_delivery;
  final String delivery_note;
  final Currency_cod_details currency_cod_details;
  final Ecom_payment_methods_details ecom_payment_methods_details;
  final Ecom_stores_delivery_details ecom_stores_delivery_details;
  final String seo_attributes;
  final String tracking_url;
  final int use_wallet_credit;
  final int wallet_usage;
  final String status_payment;
  final int ecom_users_loyalty_balances_id;
  final String total_refunded;
  PurchaseHistory({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.ecom_users_id = 0,
    this.countries_id = 0,
    this.total = 0.0,
    this.payment_type = '',
    this.tracking_number = '',
    this.status = '',
    this.waybill_link = '',
    required this.itemsFirt,
    required this.shipping_address_details,
    required this.billing_address_details,
    this.voucher_details = '',
    required this.currency_details,
    this.checkout_details = '',
    // this.ecom_vouchers_id = '',
    required this.cms_attributespurchaseHistory,
    this.ecom_stores_id = 0,
    this.ecom_stores_payment_methods_id = 0,
    this.ecom_stores_delivery_id = 0,
    this.date_delivery = '',
    this.delivery_note = '',
    required this.currency_cod_details,
    required this.ecom_payment_methods_details,
    required this.ecom_stores_delivery_details,
    this.seo_attributes = '',
    this.tracking_url = '',
    this.use_wallet_credit = 0,
    this.wallet_usage = 0,
    this.status_payment = '',
    this.ecom_users_loyalty_balances_id = 0,
    this.total_refunded = '',
  });

  PurchaseHistory copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? ecom_users_id,
    int? countries_id,
    double? total,
    String? payment_type,
    String? tracking_number,
    String? status,
    String? waybill_link,
    ItemsFirt? itemsFirt,
    AddressModel? shipping_address_details,
    AddressModel? billing_address_details,
    String? voucher_details,
    Currency_details? currency_details,
    String? checkout_details,
    // String? ecom_vouchers_id,
    Cms_attributespurchaseHistory? cms_attributespurchaseHistory,
    int? ecom_stores_id,
    int? ecom_stores_payment_methods_id,
    int? ecom_stores_delivery_id,
    String? date_delivery,
    String? delivery_note,
    Currency_cod_details? currency_cod_details,
    Ecom_payment_methods_details? ecom_payment_methods_details,
    Ecom_stores_delivery_details? ecom_stores_delivery_details,
    String? seo_attributes,
    String? tracking_url,
    int? use_wallet_credit,
    int? wallet_usage,
    String? status_payment,
    int? ecom_users_loyalty_balances_id,
    String? total_refunded,
  }) {
    return PurchaseHistory(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      ecom_users_id: ecom_users_id ?? this.ecom_users_id,
      countries_id: countries_id ?? this.countries_id,
      total: total ?? this.total,
      payment_type: payment_type ?? this.payment_type,
      tracking_number: tracking_number ?? this.tracking_number,
      status: status ?? this.status,
      waybill_link: waybill_link ?? this.waybill_link,
      itemsFirt: itemsFirt ?? this.itemsFirt,
      shipping_address_details:
          shipping_address_details ?? this.shipping_address_details,
      billing_address_details:
          billing_address_details ?? this.billing_address_details,
      voucher_details: voucher_details ?? this.voucher_details,
      currency_details: currency_details ?? this.currency_details,
      checkout_details: checkout_details ?? this.checkout_details,
      // ecom_vouchers_id: ecom_vouchers_id ?? this.ecom_vouchers_id,
      cms_attributespurchaseHistory:
          cms_attributespurchaseHistory ?? this.cms_attributespurchaseHistory,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      ecom_stores_payment_methods_id:
          ecom_stores_payment_methods_id ?? this.ecom_stores_payment_methods_id,
      ecom_stores_delivery_id:
          ecom_stores_delivery_id ?? this.ecom_stores_delivery_id,
      date_delivery: date_delivery ?? this.date_delivery,
      delivery_note: delivery_note ?? this.delivery_note,
      currency_cod_details: currency_cod_details ?? this.currency_cod_details,
      ecom_payment_methods_details:
          ecom_payment_methods_details ?? this.ecom_payment_methods_details,
      ecom_stores_delivery_details:
          ecom_stores_delivery_details ?? this.ecom_stores_delivery_details,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      tracking_url: tracking_url ?? this.tracking_url,
      use_wallet_credit: use_wallet_credit ?? this.use_wallet_credit,
      wallet_usage: wallet_usage ?? this.wallet_usage,
      status_payment: status_payment ?? this.status_payment,
      ecom_users_loyalty_balances_id:
          ecom_users_loyalty_balances_id ?? this.ecom_users_loyalty_balances_id,
      total_refunded: total_refunded ?? this.total_refunded,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'ecom_users_id': ecom_users_id,
      'countries_id': countries_id,
      'total': total,
      'payment_type': payment_type,
      'tracking_number': tracking_number,
      'status': status,
      'waybill_link': waybill_link,
      'itemsFirt': itemsFirt.toMap(),
      'shipping_address_details': shipping_address_details.toMap(),
      'billing_address_details': billing_address_details.toMap(),
      'voucher_details': voucher_details,
      'currency_details': currency_details.toMap(),
      'checkout_details': checkout_details,
      // 'ecom_vouchers_id': ecom_vouchers_id,
      'cms_attributespurchaseHistory': cms_attributespurchaseHistory.toMap(),
      'ecom_stores_id': ecom_stores_id,
      'ecom_stores_payment_methods_id': ecom_stores_payment_methods_id,
      'ecom_stores_delivery_id': ecom_stores_delivery_id,
      'date_delivery': date_delivery,
      'delivery_note': delivery_note,
      'currency_cod_details': currency_cod_details.toMap(),
      'ecom_payment_methods_details': ecom_payment_methods_details.toMap(),
      'ecom_stores_delivery_details': ecom_stores_delivery_details.toMap(),
      'seo_attributes': seo_attributes,
      'tracking_url': tracking_url,
      'use_wallet_credit': use_wallet_credit,
      'wallet_usage': wallet_usage,
      'status_payment': status_payment,
      'ecom_users_loyalty_balances_id': ecom_users_loyalty_balances_id,
      'total_refunded': total_refunded,
    };
  }

  factory PurchaseHistory.fromMap(Map<String, dynamic> map) {
    return PurchaseHistory(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      ecom_users_id: map['ecom_users_id']?.toInt() ?? 0,
      countries_id: map['countries_id']?.toInt() ?? 0,
      total: map['total']?.toDouble() ?? 0.0,
      payment_type: map['payment_type'] ?? '',
      tracking_number: map['tracking_number'] ?? '',
      status: map['status'] ?? '',
      waybill_link: map['waybill_link'] ?? '',
      itemsFirt: ItemsFirt.fromMap(map['items']),
      shipping_address_details:
          AddressModel.fromMap(map['shipping_address_details']),
      billing_address_details:
          AddressModel.fromMap(map['billing_address_details']),
      voucher_details: map['voucher_details'] ?? '',
      currency_details: Currency_details.fromMap(map['currency_details']),
      checkout_details: map['checkout_details'] ?? '',
      // ecom_vouchers_id: map['ecom_vouchers_id'] ?? '',
      cms_attributespurchaseHistory:
          Cms_attributespurchaseHistory.fromMap(map['cms_attributes'] ?? {}),
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      ecom_stores_payment_methods_id:
          map['ecom_stores_payment_methods_id']?.toInt() ?? 0,
      ecom_stores_delivery_id: map['ecom_stores_delivery_id']?.toInt() ?? 0,
      date_delivery: map['date_delivery'] ?? '',
      delivery_note: map['delivery_note'] ?? '',
      currency_cod_details:
          Currency_cod_details.fromMap(map['currency_cod_details']),
      ecom_payment_methods_details: Ecom_payment_methods_details.fromMap(
          map['ecom_payment_methods_details']),
      ecom_stores_delivery_details: Ecom_stores_delivery_details.fromMap(
          map['ecom_stores_delivery_details']),
      seo_attributes: map['seo_attributes'] ?? '',
      tracking_url: map['tracking_url'] ?? '',
      use_wallet_credit: map['use_wallet_credit']?.toInt() ?? 0,
      wallet_usage: map['wallet_usage']?.toInt() ?? 0,
      status_payment: map['status_payment'] ?? '',
      ecom_users_loyalty_balances_id:
          map['ecom_users_loyalty_balances_id']?.toInt() ?? 0,
      total_refunded: map['total_refunded'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchaseHistory.fromJson(String source) =>
      PurchaseHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PurchaseHistory(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, ecom_users_id: $ecom_users_id, countries_id: $countries_id, total: $total, payment_type: $payment_type, tracking_number: $tracking_number, status: $status, waybill_link: $waybill_link, itemsFirt: $itemsFirt, shipping_address_details: $shipping_address_details, billing_address_details: $billing_address_details, voucher_details: $voucher_details, currency_details: $currency_details, checkout_details: $checkout_details, ecom_vouchers_id: , cms_attributespurchaseHistory: $cms_attributespurchaseHistory, ecom_stores_id: $ecom_stores_id, ecom_stores_payment_methods_id: $ecom_stores_payment_methods_id, ecom_stores_delivery_id: $ecom_stores_delivery_id, date_delivery: $date_delivery, delivery_note: $delivery_note, currency_cod_details: $currency_cod_details, ecom_payment_methods_details: $ecom_payment_methods_details, ecom_stores_delivery_details: $ecom_stores_delivery_details, seo_attributes: $seo_attributes, tracking_url: $tracking_url, use_wallet_credit: $use_wallet_credit, wallet_usage: $wallet_usage, status_payment: $status_payment, ecom_users_loyalty_balances_id: $ecom_users_loyalty_balances_id, total_refunded: $total_refunded)';
  }
}

class ItemsFirt {
  final String subtotal;
  final int vat;
  final int shipping;
  final int shipping_formatted;
  final String grandTotal_formated;
  // final bool grandTotal_cod_formated;
  final double grandTotal;
  final int voucher_discount;
  final bool voucher_valid;
  final String voucher_code;
  final String voucher_response;
  final ItemsSecond itemsSecond;
  final List<dynamic> valid;
  final String breakdown;
  // final Free_delivery free_delivery;
  // final bool minimum_order;
  final int count;
  final int ecom_user_id;
  final int wallet_usage;
  ItemsFirt({
    this.subtotal = '',
    this.vat = 0,
    this.shipping = 0,
    this.shipping_formatted = 0,
    this.grandTotal_formated = '',
    // this.grandTotal_cod_formated = false,
    this.grandTotal = 0.0,
    this.voucher_discount = 0,
    this.voucher_valid = false,
    this.voucher_code = '',
    this.voucher_response = '',
    required this.itemsSecond,
    this.valid = const [],
    this.breakdown = '',
    // required this.free_delivery,
    // this.minimum_order = false,
    this.count = 0,
    this.ecom_user_id = 0,
    this.wallet_usage = 0,
  });

  ItemsFirt copyWith({
    String? subtotal,
    int? vat,
    int? shipping,
    int? shipping_formatted,
    String? grandTotal_formated,
    // bool? grandTotal_cod_formated,
    double? grandTotal,
    int? voucher_discount,
    bool? voucher_valid,
    String? voucher_code,
    String? voucher_response,
    ItemsSecond? itemsSecond,
    List<dynamic>? valid,
    String? breakdown,
    // Free_delivery? free_delivery,
    // bool? minimum_order,
    int? count,
    int? ecom_user_id,
    int? wallet_usage,
  }) {
    return ItemsFirt(
      subtotal: subtotal ?? this.subtotal,
      vat: vat ?? this.vat,
      shipping: shipping ?? this.shipping,
      shipping_formatted: shipping_formatted ?? this.shipping_formatted,
      grandTotal_formated: grandTotal_formated ?? this.grandTotal_formated,
      // grandTotal_cod_formated:
      //     grandTotal_cod_formated ?? this.grandTotal_cod_formated,
      grandTotal: grandTotal ?? this.grandTotal,
      voucher_discount: voucher_discount ?? this.voucher_discount,
      voucher_valid: voucher_valid ?? this.voucher_valid,
      voucher_code: voucher_code ?? this.voucher_code,
      voucher_response: voucher_response ?? this.voucher_response,
      itemsSecond: itemsSecond ?? this.itemsSecond,
      valid: valid ?? this.valid,
      breakdown: breakdown ?? this.breakdown,
      // free_delivery: free_delivery ?? this.free_delivery,
      // minimum_order: minimum_order ?? this.minimum_order,
      count: count ?? this.count,
      ecom_user_id: ecom_user_id ?? this.ecom_user_id,
      wallet_usage: wallet_usage ?? this.wallet_usage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'subtotal': subtotal,
      'vat': vat,
      'shipping': shipping,
      'shipping_formatted': shipping_formatted,
      'grandTotal_formated': grandTotal_formated,
      // 'grandTotal_cod_formated': grandTotal_cod_formated,
      'grandTotal': grandTotal,
      'voucher_discount': voucher_discount,
      'voucher_valid': voucher_valid,
      'voucher_code': voucher_code,
      'voucher_response': voucher_response,
      'itemsSecond': itemsSecond.toMap(),
      'valid': valid,
      'breakdown': breakdown,
      // 'free_delivery': free_delivery.toMap(),
      // 'minimum_order': minimum_order,
      'count': count,
      'ecom_user_id': ecom_user_id,
      'wallet_usage': wallet_usage,
    };
  }

  factory ItemsFirt.fromMap(Map<String, dynamic> map) {
    return ItemsFirt(
      subtotal: map['subtotal'] ?? '',
      vat: map['vat']?.toInt() ?? 0,
      shipping: map['shipping']?.toInt() ?? 0,
      shipping_formatted: map['shipping_formatted']?.toInt() ?? 0,
      grandTotal_formated: map['grandTotal_formated'] ?? '',
      // grandTotal_cod_formated: map['grandTotal_cod_formated'] ?? false,
      grandTotal: map['grandTotal']?.toDouble() ?? 0.0,
      voucher_discount: map['voucher_discount']?.toInt() ?? 0,
      voucher_valid: map['voucher_valid'] ?? false,
      voucher_code: map['voucher_code'] ?? '',
      voucher_response: map['voucher_response'] ?? '',
      itemsSecond: ItemsSecond.fromMap(map['items']),
      valid: List<dynamic>.from(map['valid']),
      breakdown: jsonEncode(map['breakdown'] ?? {}),
      // free_delivery: Free_delivery.fromMap(map['free_delivery']),
      // minimum_order: map['minimum_order'] ?? false,
      count: map['count']?.toInt() ?? 0,
      ecom_user_id: map['ecom_user_id']?.toInt() ?? 0,
      wallet_usage: map['wallet_usage']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemsFirt.fromJson(String source) =>
      ItemsFirt.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemsFirt(subtotal: $subtotal, vat: $vat, shipping: $shipping, shipping_formatted: $shipping_formatted, grandTotal_formated: $grandTotal_formated, grandTotal_cod_formated: , grandTotal: $grandTotal, voucher_discount: $voucher_discount, voucher_valid: $voucher_valid, voucher_code: $voucher_code, voucher_response: $voucher_response, itemsSecond: $itemsSecond, valid: $valid, breakdown: $breakdown, free_delivery: , minimum_order: , count: $count, ecom_user_id: $ecom_user_id, wallet_usage: $wallet_usage)';
  }
}

class ItemsSecond {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int ecom_users_id;
  final String expires_at;
  final String purchased_at;
  // final String ecom_users_temporary_id;
  // final String ecom_vouchers_id;
  final String cms_attributesitemsSecond;
  final int ecom_stores_id;
  final String seo_attributes;
  final List<dynamic> validation_errors;
  final bool cart_valid;
  final List<ItemsThird> itemsThird;
  final int count;
  final int total_discount;
  final String voucher;
  final String total_discount_formatted;
  final double subtotal;
  final String subtotal_formatted;
  final String breakdown;
  final bool voucher_valid;
  final double total;
  final String total_formatted;
  // final Free_delivery free_delivery;
  // final bool minimum_order;
  final int wallet_usage;
  // final bool total_cod_formatted;
  ItemsSecond({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.ecom_users_id = 0,
    this.expires_at = '',
    this.purchased_at = '',
    // this.ecom_users_temporary_id = '',
    // this.ecom_vouchers_id = '',
    this.cms_attributesitemsSecond = '',
    this.ecom_stores_id = 0,
    this.seo_attributes = '',
    this.validation_errors = const [],
    this.cart_valid = false,
    this.itemsThird = const [],
    this.count = 0,
    this.total_discount = 0,
    this.voucher = '',
    this.total_discount_formatted = '',
    this.subtotal = 0.0,
    this.subtotal_formatted = '',
    this.breakdown = '',
    this.voucher_valid = false,
    this.total = 0.0,
    this.total_formatted = '',
    // required this.free_delivery,
    // this.minimum_order = false,
    this.wallet_usage = 0,
    // this.total_cod_formatted = false,
  });

  ItemsSecond copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? ecom_users_id,
    String? expires_at,
    String? purchased_at,
    // String? ecom_users_temporary_id,
    // String? ecom_vouchers_id,
    String? cms_attributesitemsSecond,
    int? ecom_stores_id,
    String? seo_attributes,
    List<dynamic>? validation_errors,
    bool? cart_valid,
    List<ItemsThird>? itemsThird,
    int? count,
    int? total_discount,
    String? voucher,
    String? total_discount_formatted,
    double? subtotal,
    String? subtotal_formatted,
    String? breakdown,
    bool? voucher_valid,
    double? total,
    String? total_formatted,
    // Free_delivery? free_delivery,
    // bool? minimum_order,
    int? wallet_usage,
    // bool? total_cod_formatted,
  }) {
    return ItemsSecond(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      ecom_users_id: ecom_users_id ?? this.ecom_users_id,
      expires_at: expires_at ?? this.expires_at,
      purchased_at: purchased_at ?? this.purchased_at,
      // ecom_users_temporary_id:
      //     ecom_users_temporary_id ?? this.ecom_users_temporary_id,
      // ecom_vouchers_id: ecom_vouchers_id ?? this.ecom_vouchers_id,
      cms_attributesitemsSecond:
          cms_attributesitemsSecond ?? this.cms_attributesitemsSecond,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      validation_errors: validation_errors ?? this.validation_errors,
      cart_valid: cart_valid ?? this.cart_valid,
      itemsThird: itemsThird ?? this.itemsThird,
      count: count ?? this.count,
      total_discount: total_discount ?? this.total_discount,
      voucher: voucher ?? this.voucher,
      total_discount_formatted:
          total_discount_formatted ?? this.total_discount_formatted,
      subtotal: subtotal ?? this.subtotal,
      subtotal_formatted: subtotal_formatted ?? this.subtotal_formatted,
      breakdown: breakdown ?? this.breakdown,
      voucher_valid: voucher_valid ?? this.voucher_valid,
      total: total ?? this.total,
      total_formatted: total_formatted ?? this.total_formatted,
      // free_delivery: free_delivery ?? this.free_delivery,
      // minimum_order: minimum_order ?? this.minimum_order,
      wallet_usage: wallet_usage ?? this.wallet_usage,
      // total_cod_formatted: total_cod_formatted ?? this.total_cod_formatted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'ecom_users_id': ecom_users_id,
      'expires_at': expires_at,
      'purchased_at': purchased_at,
      // 'ecom_users_temporary_id': ecom_users_temporary_id,
      // 'ecom_vouchers_id': ecom_vouchers_id,
      'cms_attributesitemsSecond': cms_attributesitemsSecond,
      'ecom_stores_id': ecom_stores_id,
      'seo_attributes': seo_attributes,
      'validation_errors': validation_errors,
      'cart_valid': cart_valid,
      'itemsThird': itemsThird.map((x) => x.toMap()).toList(),
      'count': count,
      'total_discount': total_discount,
      'voucher': voucher,
      'total_discount_formatted': total_discount_formatted,
      'subtotal': subtotal,
      'subtotal_formatted': subtotal_formatted,
      'breakdown': breakdown,
      'voucher_valid': voucher_valid,
      'total': total,
      'total_formatted': total_formatted,
      // 'free_delivery': free_delivery.toMap(),
      // 'minimum_order': minimum_order,
      'wallet_usage': wallet_usage,
      // 'total_cod_formatted': total_cod_formatted,
    };
  }

  factory ItemsSecond.fromMap(Map<String, dynamic> map) {
    return ItemsSecond(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      ecom_users_id: map['ecom_users_id']?.toInt() ?? 0,
      expires_at: map['expires_at'] ?? '',
      purchased_at: map['purchased_at'] ?? '',
      // ecom_users_temporary_id: map['ecom_users_temporary_id'] ?? '',
      // ecom_vouchers_id: map['ecom_vouchers_id'] ?? '',
      cms_attributesitemsSecond: map['cms_attributes'] ?? '',
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      validation_errors: List<dynamic>.from(map['validation_errors']),
      cart_valid: map['cart_valid'] ?? false,
      itemsThird: List<ItemsThird>.from(
          map['items']?.map((x) => ItemsThird.fromMap(x))),
      count: map['count']?.toInt() ?? 0,
      total_discount: map['total_discount']?.toInt() ?? 0,
      voucher: map['voucher'] ?? '',
      total_discount_formatted: map['total_discount_formatted'] ?? '',
      subtotal: map['subtotal']?.toDouble() ?? 0.0,
      subtotal_formatted: map['subtotal_formatted'] ?? '',
      breakdown: jsonEncode(map['breakdown'] ?? {}),
      voucher_valid: map['voucher_valid'] ?? false,
      total: map['total']?.toDouble() ?? 0.0,
      total_formatted: map['total_formatted'] ?? '',
      // free_delivery: Free_delivery.fromMap(map['free_delivery'] ?? {}),
      // minimum_order: map['minimum_order'] ?? false,
      wallet_usage: map['wallet_usage']?.toInt() ?? 0,
      // total_cod_formatted: map['total_cod_formatted'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemsSecond.fromJson(String source) =>
      ItemsSecond.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemsSecond(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, ecom_users_id: $ecom_users_id, expires_at: $expires_at, purchased_at: $purchased_at, ecom_users_temporary_id: , ecom_vouchers_id: , cms_attributesitemsSecond: $cms_attributesitemsSecond, ecom_stores_id: $ecom_stores_id, seo_attributes: $seo_attributes, validation_errors: $validation_errors, cart_valid: $cart_valid, itemsThird: $itemsThird, count: $count, total_discount: $total_discount, voucher: $voucher, total_discount_formatted: $total_discount_formatted, subtotal: $subtotal, subtotal_formatted: $subtotal_formatted, breakdown: $breakdown, voucher_valid: $voucher_valid, total: $total, total_formatted: $total_formatted, free_delivery: , minimum_order: , wallet_usage: $wallet_usage, total_cod_formatted: )';
  }
}

class ItemsThird {
  final int id;
  final int ecom_products_id;
  final int quantity;
  final String modifiers;
  final String cms_attributesitemsThird;
  final DetailsitemsThird detailsitemsThird;
  final List<CartItemModifierDetails> modifier_details;
  final double final_price;
  final String final_price_formatted;
  final String adjuster_price_old_formatted;
  final String other_details;
  final String link;
  ItemsThird({
    this.id = 0,
    this.ecom_products_id = 0,
    this.quantity = 0,
    this.modifiers = '',
    this.cms_attributesitemsThird = '',
    required this.detailsitemsThird,
    this.modifier_details = const [],
    this.final_price = 0.0,
    this.final_price_formatted = '',
    this.adjuster_price_old_formatted = '',
    this.other_details = '',
    this.link = '',
  });

  ItemsThird copyWith({
    int? id,
    int? ecom_products_id,
    int? quantity,
    String? modifiers,
    String? cms_attributesitemsThird,
    DetailsitemsThird? detailsitemsThird,
    List<CartItemModifierDetails>? modifier_details,
    double? final_price,
    String? final_price_formatted,
    String? adjuster_price_old_formatted,
    String? other_details,
    String? link,
  }) {
    return ItemsThird(
      id: id ?? this.id,
      ecom_products_id: ecom_products_id ?? this.ecom_products_id,
      quantity: quantity ?? this.quantity,
      modifiers: modifiers ?? this.modifiers,
      cms_attributesitemsThird:
          cms_attributesitemsThird ?? this.cms_attributesitemsThird,
      detailsitemsThird: detailsitemsThird ?? this.detailsitemsThird,
      modifier_details: modifier_details ?? this.modifier_details,
      final_price: final_price ?? this.final_price,
      final_price_formatted:
          final_price_formatted ?? this.final_price_formatted,
      adjuster_price_old_formatted:
          adjuster_price_old_formatted ?? this.adjuster_price_old_formatted,
      other_details: other_details ?? this.other_details,
      link: link ?? this.link,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ecom_products_id': ecom_products_id,
      'quantity': quantity,
      'modifiers': modifiers,
      'cms_attributesitemsThird': cms_attributesitemsThird,
      'detailsitemsThird': detailsitemsThird.toMap(),
      'modifier_details': modifier_details,
      'final_price': final_price,
      'final_price_formatted': final_price_formatted,
      'adjuster_price_old_formatted': adjuster_price_old_formatted,
      'other_details': other_details,
      'link': link,
    };
  }

  factory ItemsThird.fromMap(Map<String, dynamic> map) {
    return ItemsThird(
      id: map['id']?.toInt() ?? 0,
      ecom_products_id: map['ecom_products_id']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      modifiers: map['modifiers'] ?? '',
      cms_attributesitemsThird: jsonEncode(map['cms_attributes'] ?? {}),
      detailsitemsThird: DetailsitemsThird.fromMap(map['details']),
      modifier_details: List<CartItemModifierDetails>.from(
        map['modifier_details']
                ?.map((x) => CartItemModifierDetails.fromMap(x)) ??
            const [],
      ),
      final_price: map['final_price']?.toDouble() ?? 0.0,
      final_price_formatted: map['final_price_formatted'] ?? '',
      adjuster_price_old_formatted: map['adjuster_price_old_formatted'] ?? '',
      other_details: jsonEncode(map['other_details'] ?? ''),
      link: map['link'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemsThird.fromJson(String source) =>
      ItemsThird.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemsThird(id: $id, ecom_products_id: $ecom_products_id, quantity: $quantity, modifiers: $modifiers, cms_attributesitemsThird: $cms_attributesitemsThird, detailsitemsThird: $detailsitemsThird, modifier_details: $modifier_details, final_price: $final_price, final_price_formatted: $final_price_formatted, other_details: $other_details, link: $link)';
  }
}

class DetailsitemsThird {
  final int id;
  final String extension_image;
  final String sku;
  final double price_ttc;
  // final String price_shelf;
  final int version;
  final int stock_quantity;
  final String family_group_id;
  // final List<String> keywords;
  final List<Gallery> gallery;
  final CmsAttributesPurchaseHistoryitemsThirddetails
      cms_attributesitemsThirddetails;
  // final List<String> ecom_products_tags_id;
  final int ecom_stores_id;
  final int ecom_subcategories_id;
  final String slug;
  final int digital_product;
  final String ecom_products_giftcards_id;
  final int preorder_available;
  final String link;
  final int discount;
  final double price;
  final String label;
  final String small_description;
  final List<EcomProductsTag> ecom_products_tags;
  final String unit_price_formatted;
  final UnitPriceFormattedArray unit_price_formatted_array;
  final String unit_price_beforediscount_formatted;
  final String thumb;
  final String image;
  final String variation_primary;
  final String variation_secondary;
  DetailsitemsThird({
    this.id = 0,
    this.extension_image = '',
    this.sku = '',
    this.price_ttc = 0.0,
    // this.price_shelf = '',
    this.version = 0,
    this.stock_quantity = 0,
    this.family_group_id = '',
    // this.keywords = const [],
    this.gallery = const [],
    required this.cms_attributesitemsThirddetails,
    // this.ecom_products_tags_id = const [],
    this.ecom_stores_id = 0,
    this.ecom_subcategories_id = 0,
    this.slug = '',
    this.digital_product = 0,
    this.ecom_products_giftcards_id = '',
    this.preorder_available = 0,
    this.link = '',
    this.discount = 0,
    this.price = 0.0,
    this.label = '',
    this.small_description = '',
    this.ecom_products_tags = const [],
    this.unit_price_formatted = '',
    required this.unit_price_formatted_array,
    this.unit_price_beforediscount_formatted = '',
    this.thumb = '',
    this.image = '',
    this.variation_primary = '',
    this.variation_secondary = '',
  });

  DetailsitemsThird copyWith({
    int? id,
    String? extension_image,
    String? sku,
    double? price_ttc,
    // String? price_shelf,
    int? version,
    int? stock_quantity,
    String? family_group_id,
    // List<String>? keywords,
    List<Gallery>? gallery,
    CmsAttributesPurchaseHistoryitemsThirddetails?
        cms_attributesitemsThirddetails,
    // List<String>? ecom_products_tags_id,
    int? ecom_stores_id,
    int? ecom_subcategories_id,
    String? slug,
    int? digital_product,
    String? ecom_products_giftcards_id,
    int? preorder_available,
    String? link,
    int? discount,
    double? price,
    String? label,
    String? small_description,
    List<EcomProductsTag>? ecom_products_tags,
    String? unit_price_formatted,
    UnitPriceFormattedArray? unit_price_formatted_array,
    String? unit_price_beforediscount_formatted,
    String? thumb,
    String? image,
    String? variation_primary,
    String? variation_secondary,
  }) {
    return DetailsitemsThird(
      id: id ?? this.id,
      extension_image: extension_image ?? this.extension_image,
      sku: sku ?? this.sku,
      price_ttc: price_ttc ?? this.price_ttc,
      // price_shelf: price_shelf ?? this.price_shelf,
      version: version ?? this.version,
      stock_quantity: stock_quantity ?? this.stock_quantity,
      family_group_id: family_group_id ?? this.family_group_id,
      // keywords: keywords ?? this.keywords,
      gallery: gallery ?? this.gallery,
      cms_attributesitemsThirddetails: cms_attributesitemsThirddetails ??
          this.cms_attributesitemsThirddetails,
      // ecom_products_tags_id:
      //     ecom_products_tags_id ?? this.ecom_products_tags_id,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      slug: slug ?? this.slug,
      digital_product: digital_product ?? this.digital_product,
      ecom_products_giftcards_id:
          ecom_products_giftcards_id ?? this.ecom_products_giftcards_id,
      preorder_available: preorder_available ?? this.preorder_available,
      link: link ?? this.link,
      discount: discount ?? this.discount,
      price: price ?? this.price,
      label: label ?? this.label,
      small_description: small_description ?? this.small_description,
      ecom_products_tags: ecom_products_tags ?? this.ecom_products_tags,
      unit_price_formatted: unit_price_formatted ?? this.unit_price_formatted,
      unit_price_formatted_array:
          unit_price_formatted_array ?? this.unit_price_formatted_array,
      unit_price_beforediscount_formatted:
          unit_price_beforediscount_formatted ??
              this.unit_price_beforediscount_formatted,
      thumb: thumb ?? this.thumb,
      image: image ?? this.image,
      variation_primary: variation_primary ?? this.variation_primary,
      variation_secondary: variation_secondary ?? this.variation_secondary,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'extension_image': extension_image,
      'sku': sku,
      'price_ttc': price_ttc,
      // 'price_shelf': price_shelf,
      'version': version,
      'stock_quantity': stock_quantity,
      'family_group_id': family_group_id,
      // 'keywords': keywords,
      'gallery': gallery.map((x) => x.toMap()).toList(),
      'cms_attributesitemsThirddetails':
          cms_attributesitemsThirddetails.toMap(),
      // 'ecom_products_tags_id': ecom_products_tags_id,
      'ecom_stores_id': ecom_stores_id,
      'ecom_subcategories_id': ecom_subcategories_id,
      'slug': slug,
      'digital_product': digital_product,
      'ecom_products_giftcards_id': ecom_products_giftcards_id,
      'preorder_available': preorder_available,
      'link': link,
      'discount': discount,
      'price': price,
      'label': label,
      'small_description': small_description,
      'ecom_products_tags': ecom_products_tags.map((x) => x.toMap()).toList(),
      'unit_price_formatted': unit_price_formatted,
      'unit_price_formatted_array': unit_price_formatted_array.toMap(),
      'unit_price_beforediscount_formatted':
          unit_price_beforediscount_formatted,
      'thumb': thumb,
      'image': image,
      'variation_primary': variation_primary,
      'variation_secondary': variation_secondary,
    };
  }

  factory DetailsitemsThird.fromMap(Map<String, dynamic> map) {
    return DetailsitemsThird(
      id: map['id']?.toInt() ?? 0,
      extension_image: map['extension_image'] ?? '',
      sku: map['sku'] ?? '',
      price_ttc: map['price_ttc']?.toDouble() ?? 0.0,
      // price_shelf: map['price_shelf'] ?? '',
      version: map['version']?.toInt() ?? 0,
      stock_quantity: map['stock_quantity']?.toInt() ?? 0,
      family_group_id: map['family_group_id'] ?? '',
      // keywords: List<String>.from(map['keywords']),
      gallery:
          List<Gallery>.from(map['gallery']?.map((x) => Gallery.fromMap(x))),
      cms_attributesitemsThirddetails:
          CmsAttributesPurchaseHistoryitemsThirddetails.fromMap(
              map['cms_attributes'] ?? {}),
      // ecom_products_tags_id:
      //     List<String>.from(map['ecom_products_tags_id'] ?? {}),
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      ecom_subcategories_id: map['ecom_subcategories_id']?.toInt() ?? 0,
      slug: map['slug'] ?? '',
      digital_product: map['digital_product']?.toInt() ?? 0,
      ecom_products_giftcards_id: map['ecom_products_giftcards_id'] ?? '',
      preorder_available: map['preorder_available']?.toInt() ?? 0,
      link: map['link'] ?? '',
      discount: map['discount']?.toInt() ?? 0,
      price: map['price']?.toDouble() ?? 0.0,
      label: map['label'] ?? '',
      small_description: map['small_description'] ?? '',
      ecom_products_tags: List<EcomProductsTag>.from(
          map['ecom_products_tags']?.map((x) => EcomProductsTag.fromMap(x)) ??
              {}),
      unit_price_formatted: map['unit_price_formatted'] ?? '',
      unit_price_formatted_array: UnitPriceFormattedArray.fromMap(
          map['unit_price_formatted_array'] ?? {}),
      unit_price_beforediscount_formatted:
          map['unit_price_beforediscount_formatted'] ?? '',
      thumb: map['thumb'] ?? '',
      image: map['image'] ?? '',
      variation_primary: map['variation_primary'] ?? '',
      variation_secondary: map['variation_secondary'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsitemsThird.fromJson(String source) =>
      DetailsitemsThird.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DetailsitemsThird(id: $id, extension_image: $extension_image, sku: $sku, price_ttc: $price_ttc, price_shelf:, version: $version, stock_quantity: $stock_quantity, family_group_id: $family_group_id, gallery: $gallery, cms_attributesitemsThirddetails: $cms_attributesitemsThirddetails, ecom_stores_id: $ecom_stores_id, ecom_subcategories_id: $ecom_subcategories_id, slug: $slug, digital_product: $digital_product, ecom_products_giftcards_id: $ecom_products_giftcards_id, preorder_available: $preorder_available, link: $link, discount: $discount, price: $price, label: $label, small_description: $small_description, ecom_products_tags: $ecom_products_tags, unit_price_formatted: $unit_price_formatted, unit_price_formatted_array: $unit_price_formatted_array, unit_price_beforediscount_formatted: $unit_price_beforediscount_formatted, thumb: $thumb, image: $image, variation_primary: $variation_primary, variation_secondary: $variation_secondary)';
  }
}

class CmsAttributesPurchaseHistoryitemsThirddetails {
  final String attributes_inthebox;
  // final String attributes_ecom_products_tags_id;
  // final String attributes_banners_id;
  final String created_at;
  final String updated_at;
  final int version;
  CmsAttributesPurchaseHistoryitemsThirddetails({
    this.attributes_inthebox = '',
    // this.attributes_ecom_products_tags_id = '',
    // this.attributes_banners_id = '',
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  CmsAttributesPurchaseHistoryitemsThirddetails copyWith({
    String? attributes_inthebox,
    // String? attributes_ecom_products_tags_id,
    // String? attributes_banners_id,
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return CmsAttributesPurchaseHistoryitemsThirddetails(
      attributes_inthebox: attributes_inthebox ?? this.attributes_inthebox,
      // attributes_ecom_products_tags_id: attributes_ecom_products_tags_id ??
      //     this.attributes_ecom_products_tags_id,
      // attributes_banners_id:
      //     attributes_banners_id ?? this.attributes_banners_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'attributes_inthebox': attributes_inthebox,
      // 'attributes_ecom_products_tags_id': attributes_ecom_products_tags_id,
      // 'attributes_banners_id': attributes_banners_id,
      'created_at': created_at,
      'updated_at': updated_at,
      'version': version,
    };
  }

  factory CmsAttributesPurchaseHistoryitemsThirddetails.fromMap(
      Map<String, dynamic> map) {
    return CmsAttributesPurchaseHistoryitemsThirddetails(
      attributes_inthebox: jsonEncode(map['attributes_inthebox'] ?? ''),
      // attributes_ecom_products_tags_id:
      //     map['attributes_ecom_products_tags_id'] ?? '',
      // attributes_banners_id: map['attributes_banners_id'] ?? '',
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CmsAttributesPurchaseHistoryitemsThirddetails.fromJson(
          String source) =>
      CmsAttributesPurchaseHistoryitemsThirddetails.fromMap(
          json.decode(source));

  @override
  String toString() {
    return 'Cms_attributesitemsThirddetails(attributes_inthebox: $attributes_inthebox, created_at: $created_at, updated_at: $updated_at, version: $version)';
  }
}

class EcomProductsTag {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String label;
  final String extension_icon;
  final String alt_icon;
  final CmsAttributesecomProductsTags cms_attributesecom_products_tags;
  final int display;
  final String label_en;
  final String label_ar;
  final String label_fr;
  final String seo_attributes;
  final String auto_apply;
  final String bg_color;
  final int show_card;
  EcomProductsTag({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.label = '',
    this.extension_icon = '',
    this.alt_icon = '',
    required this.cms_attributesecom_products_tags,
    this.display = 0,
    this.label_en = '',
    this.label_ar = '',
    this.label_fr = '',
    this.seo_attributes = '',
    this.auto_apply = '',
    this.bg_color = '',
    this.show_card = 0,
  });

  EcomProductsTag copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? label,
    String? extension_icon,
    String? alt_icon,
    CmsAttributesecomProductsTags? cms_attributesecom_products_tags,
    int? display,
    String? label_en,
    String? label_ar,
    String? label_fr,
    String? seo_attributes,
    String? auto_apply,
    String? bg_color,
    int? show_card,
  }) {
    return EcomProductsTag(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      label: label ?? this.label,
      extension_icon: extension_icon ?? this.extension_icon,
      alt_icon: alt_icon ?? this.alt_icon,
      cms_attributesecom_products_tags: cms_attributesecom_products_tags ??
          this.cms_attributesecom_products_tags,
      display: display ?? this.display,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      label_fr: label_fr ?? this.label_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      auto_apply: auto_apply ?? this.auto_apply,
      bg_color: bg_color ?? this.bg_color,
      show_card: show_card ?? this.show_card,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'label': label,
      'extension_icon': extension_icon,
      'alt_icon': alt_icon,
      'cms_attributesecom_products_tags':
          cms_attributesecom_products_tags.toMap(),
      'display': display,
      'label_en': label_en,
      'label_ar': label_ar,
      'label_fr': label_fr,
      'seo_attributes': seo_attributes,
      'auto_apply': auto_apply,
      'bg_color': bg_color,
      'show_card': show_card,
    };
  }

  factory EcomProductsTag.fromMap(Map<String, dynamic> map) {
    return EcomProductsTag(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      label: map['label'] ?? '',
      extension_icon: map['extension_icon'] ?? '',
      alt_icon: map['alt_icon'] ?? '',
      cms_attributesecom_products_tags:
          CmsAttributesecomProductsTags.fromMap(map['cms_attributes'] ?? {}),
      display: map['display']?.toInt() ?? 0,
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      auto_apply: map['auto_apply'] ?? '',
      bg_color: map['bg_color'] ?? '',
      show_card: map['show_card']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory EcomProductsTag.fromJson(String source) =>
      EcomProductsTag.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ecom_products_tag(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, label: $label, extension_icon: $extension_icon, alt_icon: $alt_icon, cms_attributesecom_products_tags: $cms_attributesecom_products_tags, display: $display, label_en: $label_en, label_ar: $label_ar, label_fr: $label_fr, seo_attributes: $seo_attributes, auto_apply: $auto_apply, bg_color: $bg_color, show_card: $show_card)';
  }
}

class CmsAttributesecomProductsTags {
  final String created_at;
  final String updated_at;
  final int version;
  CmsAttributesecomProductsTags({
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  CmsAttributesecomProductsTags copyWith({
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return CmsAttributesecomProductsTags(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created_at': created_at,
      'updated_at': updated_at,
      'version': version,
    };
  }

  factory CmsAttributesecomProductsTags.fromMap(Map<String, dynamic> map) {
    return CmsAttributesecomProductsTags(
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CmsAttributesecomProductsTags.fromJson(String source) =>
      CmsAttributesecomProductsTags.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributesecom_products_tags(created_at: $created_at, updated_at: $updated_at, version: $version)';
}

class UnitPriceFormattedArray {
  final String price;
  final double price_not_formatted;
  final String currency;
  UnitPriceFormattedArray({
    this.price = '',
    this.price_not_formatted = 0.0,
    this.currency = '',
  });

  UnitPriceFormattedArray copyWith({
    String? price,
    double? price_not_formatted,
    String? currency,
  }) {
    return UnitPriceFormattedArray(
      price: price ?? this.price,
      price_not_formatted: price_not_formatted ?? this.price_not_formatted,
      currency: currency ?? this.currency,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'price': price,
      'price_not_formatted': price_not_formatted,
      'currency': currency,
    };
  }

  factory UnitPriceFormattedArray.fromMap(Map<String, dynamic> map) {
    return UnitPriceFormattedArray(
      price: map['price'] ?? '',
      price_not_formatted: map['price_not_formatted']?.toDouble() ?? 0.0,
      currency: map['currency'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UnitPriceFormattedArray.fromJson(String source) =>
      UnitPriceFormattedArray.fromMap(json.decode(source));

  @override
  String toString() =>
      'Unit_price_formatted_array(price: $price, price_not_formatted: $price_not_formatted, currency: $currency)';
}

// class Free_delivery {
//   final int value;
//   final String value_formatted;
//   final int remaining;
//   final int percentage;
//   final String remaining_formatted;
//   Free_delivery({
//     this.value = 0,
//     this.value_formatted = '',
//     this.remaining = 0,
//     this.percentage = 0,
//     this.remaining_formatted = '',
//   });

//   Free_delivery copyWith({
//     int? value,
//     String? value_formatted,
//     int? remaining,
//     int? percentage,
//     String? remaining_formatted,
//   }) {
//     return Free_delivery(
//       value: value ?? this.value,
//       value_formatted: value_formatted ?? this.value_formatted,
//       remaining: remaining ?? this.remaining,
//       percentage: percentage ?? this.percentage,
//       remaining_formatted: remaining_formatted ?? this.remaining_formatted,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'value': value,
//       'value_formatted': value_formatted,
//       'remaining': remaining,
//       'percentage': percentage,
//       'remaining_formatted': remaining_formatted,
//     };
//   }

//   factory Free_delivery.fromMap(Map<String, dynamic> map) {
//     return Free_delivery(
//       value: map['value']?.toInt() ?? 0,
//       value_formatted: map['value_formatted'] ?? '',
//       remaining: map['remaining']?.toInt() ?? 0,
//       percentage: map['percentage']?.toInt() ?? 0,
//       remaining_formatted: map['remaining_formatted'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Free_delivery.fromJson(String source) =>
//       Free_delivery.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Free_delivery(value: $value, value_formatted: $value_formatted, remaining: $remaining, percentage: $percentage, remaining_formatted: $remaining_formatted)';
//   }
// }

class Countryshipping_address_details {
  final int id;
  final String code;
  final String name;
  final int cancelled;
  final int shipping_available;
  final int shipping_fees;
  final int locked;
  final int vat;
  final int display;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int version;
  final String phone_code;
  final String cms_attributesshipping_address_detailscountry;
  final int state_required;
  final int zipcode_required;
  final String ecom_shipping_zones_id;
  final String ecom_currencies_id;
  final String ban_ecom_currencies_id;
  final String name_en;
  final String name_ar;
  final String name_fr;
  final String seo_attributes;
  final String zip_code_format;
  final String timezone;
  Countryshipping_address_details({
    this.id = 0,
    this.code = '',
    this.name = '',
    this.cancelled = 0,
    this.shipping_available = 0,
    this.shipping_fees = 0,
    this.locked = 0,
    this.vat = 0,
    this.display = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.version = 0,
    this.phone_code = '',
    this.cms_attributesshipping_address_detailscountry = '',
    this.state_required = 0,
    this.zipcode_required = 0,
    this.ecom_shipping_zones_id = '',
    this.ecom_currencies_id = '',
    this.ban_ecom_currencies_id = '',
    this.name_en = '',
    this.name_ar = '',
    this.name_fr = '',
    this.seo_attributes = '',
    this.zip_code_format = '',
    this.timezone = '',
  });

  Countryshipping_address_details copyWith({
    int? id,
    String? code,
    String? name,
    int? cancelled,
    int? shipping_available,
    int? shipping_fees,
    int? locked,
    int? vat,
    int? display,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? version,
    String? phone_code,
    String? cms_attributesshipping_address_detailscountry,
    int? state_required,
    int? zipcode_required,
    String? ecom_shipping_zones_id,
    String? ecom_currencies_id,
    String? ban_ecom_currencies_id,
    String? name_en,
    String? name_ar,
    String? name_fr,
    String? seo_attributes,
    String? zip_code_format,
    String? timezone,
  }) {
    return Countryshipping_address_details(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      cancelled: cancelled ?? this.cancelled,
      shipping_available: shipping_available ?? this.shipping_available,
      shipping_fees: shipping_fees ?? this.shipping_fees,
      locked: locked ?? this.locked,
      vat: vat ?? this.vat,
      display: display ?? this.display,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      version: version ?? this.version,
      phone_code: phone_code ?? this.phone_code,
      cms_attributesshipping_address_detailscountry:
          cms_attributesshipping_address_detailscountry ??
              this.cms_attributesshipping_address_detailscountry,
      state_required: state_required ?? this.state_required,
      zipcode_required: zipcode_required ?? this.zipcode_required,
      ecom_shipping_zones_id:
          ecom_shipping_zones_id ?? this.ecom_shipping_zones_id,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      ban_ecom_currencies_id:
          ban_ecom_currencies_id ?? this.ban_ecom_currencies_id,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      name_fr: name_fr ?? this.name_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      zip_code_format: zip_code_format ?? this.zip_code_format,
      timezone: timezone ?? this.timezone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'cancelled': cancelled,
      'shipping_available': shipping_available,
      'shipping_fees': shipping_fees,
      'locked': locked,
      'vat': vat,
      'display': display,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'version': version,
      'phone_code': phone_code,
      'cms_attributesshipping_address_detailscountry':
          cms_attributesshipping_address_detailscountry,
      'state_required': state_required,
      'zipcode_required': zipcode_required,
      'ecom_shipping_zones_id': ecom_shipping_zones_id,
      'ecom_currencies_id': ecom_currencies_id,
      'ban_ecom_currencies_id': ban_ecom_currencies_id,
      'name_en': name_en,
      'name_ar': name_ar,
      'name_fr': name_fr,
      'seo_attributes': seo_attributes,
      'zip_code_format': zip_code_format,
      'timezone': timezone,
    };
  }

  factory Countryshipping_address_details.fromMap(Map<String, dynamic> map) {
    return Countryshipping_address_details(
      id: map['id']?.toInt() ?? 0,
      code: map['code'] ?? '',
      name: map['name'] ?? '',
      cancelled: map['cancelled']?.toInt() ?? 0,
      shipping_available: map['shipping_available']?.toInt() ?? 0,
      shipping_fees: map['shipping_fees']?.toInt() ?? 0,
      locked: map['locked']?.toInt() ?? 0,
      vat: map['vat']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
      phone_code: map['phone_code'] ?? '',
      cms_attributesshipping_address_detailscountry:
          map['cms_attributes'] ?? '',
      state_required: map['state_required']?.toInt() ?? 0,
      zipcode_required: map['zipcode_required']?.toInt() ?? 0,
      ecom_shipping_zones_id: map['ecom_shipping_zones_id'] ?? '',
      ecom_currencies_id: map['ecom_currencies_id'] ?? '',
      ban_ecom_currencies_id: map['ban_ecom_currencies_id'] ?? '',
      name_en: map['name_en'] ?? '',
      name_ar: map['name_ar'] ?? '',
      name_fr: map['name_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      zip_code_format: map['zip_code_format'] ?? '',
      timezone: map['timezone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Countryshipping_address_details.fromJson(String source) =>
      Countryshipping_address_details.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Countryshipping_address_details(id: $id, code: $code, name: $name, cancelled: $cancelled, shipping_available: $shipping_available, shipping_fees: $shipping_fees, locked: $locked, vat: $vat, display: $display, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, version: $version, phone_code: $phone_code, cms_attributesshipping_address_detailscountry: $cms_attributesshipping_address_detailscountry, state_required: $state_required, zipcode_required: $zipcode_required, ecom_shipping_zones_id: $ecom_shipping_zones_id, ecom_currencies_id: $ecom_currencies_id, ban_ecom_currencies_id: $ban_ecom_currencies_id, name_en: $name_en, name_ar: $name_ar, name_fr: $name_fr, seo_attributes: $seo_attributes, zip_code_format: $zip_code_format, timezone: $timezone)';
  }
}

class Countrybilling_address_details {
  final int id;
  final String code;
  final String name;
  final int cancelled;
  final int shipping_available;
  final int shipping_fees;
  final int locked;
  final int vat;
  final int display;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int version;
  final String phone_code;
  final String cms_attributesbilling_address_detailscountry;
  final int state_required;
  final int zipcode_required;
  final String ecom_shipping_zones_id;
  final String ecom_currencies_id;
  final String ban_ecom_currencies_id;
  final String name_en;
  final String name_ar;
  final String name_fr;
  final String seo_attributes;
  final String zip_code_format;
  final String timezone;
  Countrybilling_address_details({
    this.id = 0,
    this.code = '',
    this.name = '',
    this.cancelled = 0,
    this.shipping_available = 0,
    this.shipping_fees = 0,
    this.locked = 0,
    this.vat = 0,
    this.display = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.version = 0,
    this.phone_code = '',
    this.cms_attributesbilling_address_detailscountry = '',
    this.state_required = 0,
    this.zipcode_required = 0,
    this.ecom_shipping_zones_id = '',
    this.ecom_currencies_id = '',
    this.ban_ecom_currencies_id = '',
    this.name_en = '',
    this.name_ar = '',
    this.name_fr = '',
    this.seo_attributes = '',
    this.zip_code_format = '',
    this.timezone = '',
  });

  Countrybilling_address_details copyWith({
    int? id,
    String? code,
    String? name,
    int? cancelled,
    int? shipping_available,
    int? shipping_fees,
    int? locked,
    int? vat,
    int? display,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? version,
    String? phone_code,
    String? cms_attributesbilling_address_detailscountry,
    int? state_required,
    int? zipcode_required,
    String? ecom_shipping_zones_id,
    String? ecom_currencies_id,
    String? ban_ecom_currencies_id,
    String? name_en,
    String? name_ar,
    String? name_fr,
    String? seo_attributes,
    String? zip_code_format,
    String? timezone,
  }) {
    return Countrybilling_address_details(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      cancelled: cancelled ?? this.cancelled,
      shipping_available: shipping_available ?? this.shipping_available,
      shipping_fees: shipping_fees ?? this.shipping_fees,
      locked: locked ?? this.locked,
      vat: vat ?? this.vat,
      display: display ?? this.display,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      version: version ?? this.version,
      phone_code: phone_code ?? this.phone_code,
      cms_attributesbilling_address_detailscountry:
          cms_attributesbilling_address_detailscountry ??
              this.cms_attributesbilling_address_detailscountry,
      state_required: state_required ?? this.state_required,
      zipcode_required: zipcode_required ?? this.zipcode_required,
      ecom_shipping_zones_id:
          ecom_shipping_zones_id ?? this.ecom_shipping_zones_id,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      ban_ecom_currencies_id:
          ban_ecom_currencies_id ?? this.ban_ecom_currencies_id,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      name_fr: name_fr ?? this.name_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      zip_code_format: zip_code_format ?? this.zip_code_format,
      timezone: timezone ?? this.timezone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'cancelled': cancelled,
      'shipping_available': shipping_available,
      'shipping_fees': shipping_fees,
      'locked': locked,
      'vat': vat,
      'display': display,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'version': version,
      'phone_code': phone_code,
      'cms_attributesbilling_address_detailscountry':
          cms_attributesbilling_address_detailscountry,
      'state_required': state_required,
      'zipcode_required': zipcode_required,
      'ecom_shipping_zones_id': ecom_shipping_zones_id,
      'ecom_currencies_id': ecom_currencies_id,
      'ban_ecom_currencies_id': ban_ecom_currencies_id,
      'name_en': name_en,
      'name_ar': name_ar,
      'name_fr': name_fr,
      'seo_attributes': seo_attributes,
      'zip_code_format': zip_code_format,
      'timezone': timezone,
    };
  }

  factory Countrybilling_address_details.fromMap(Map<String, dynamic> map) {
    return Countrybilling_address_details(
      id: map['id']?.toInt() ?? 0,
      code: map['code'] ?? '',
      name: map['name'] ?? '',
      cancelled: map['cancelled']?.toInt() ?? 0,
      shipping_available: map['shipping_available']?.toInt() ?? 0,
      shipping_fees: map['shipping_fees']?.toInt() ?? 0,
      locked: map['locked']?.toInt() ?? 0,
      vat: map['vat']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
      phone_code: map['phone_code'] ?? '',
      cms_attributesbilling_address_detailscountry: map['cms_attributes'] ?? '',
      state_required: map['state_required']?.toInt() ?? 0,
      zipcode_required: map['zipcode_required']?.toInt() ?? 0,
      ecom_shipping_zones_id: map['ecom_shipping_zones_id'] ?? '',
      ecom_currencies_id: map['ecom_currencies_id'] ?? '',
      ban_ecom_currencies_id: map['ban_ecom_currencies_id'] ?? '',
      name_en: map['name_en'] ?? '',
      name_ar: map['name_ar'] ?? '',
      name_fr: map['name_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      zip_code_format: map['zip_code_format'] ?? '',
      timezone: map['timezone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Countrybilling_address_details.fromJson(String source) =>
      Countrybilling_address_details.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Countrybilling_address_details(id: $id, code: $code, name: $name, cancelled: $cancelled, shipping_available: $shipping_available, shipping_fees: $shipping_fees, locked: $locked, vat: $vat, display: $display, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, version: $version, phone_code: $phone_code, cms_attributesbilling_address_detailscountry: $cms_attributesbilling_address_detailscountry, state_required: $state_required, zipcode_required: $zipcode_required, ecom_shipping_zones_id: $ecom_shipping_zones_id, ecom_currencies_id: $ecom_currencies_id, ban_ecom_currencies_id: $ban_ecom_currencies_id, name_en: $name_en, name_ar: $name_ar, name_fr: $name_fr, seo_attributes: $seo_attributes, zip_code_format: $zip_code_format, timezone: $timezone)';
  }
}

class Currency_details {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String name;
  final String label;
  final int display;
  final String symbol;
  final String rate;
  final int nb_decimal;
  final String direction;
  final int rounding;
  final String countries_id_ban;
  final Cms_attributescurrency_details cms_attributescurrency_details;
  final String symbol_en;
  final String symbol_ar;
  final String separator_thousands;
  final String separator_decimal;
  final String name_en;
  final String name_ar;
  final String label_en;
  final String label_ar;
  final String name_fr;
  final String label_fr;
  final String symbol_fr;
  final String iso;
  final String seo_attributes;
  Currency_details({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.name = '',
    this.label = '',
    this.display = 0,
    this.symbol = '',
    this.rate = '',
    this.nb_decimal = 0,
    this.direction = '',
    this.rounding = 0,
    this.countries_id_ban = '',
    required this.cms_attributescurrency_details,
    this.symbol_en = '',
    this.symbol_ar = '',
    this.separator_thousands = '',
    this.separator_decimal = '',
    this.name_en = '',
    this.name_ar = '',
    this.label_en = '',
    this.label_ar = '',
    this.name_fr = '',
    this.label_fr = '',
    this.symbol_fr = '',
    this.iso = '',
    this.seo_attributes = '',
  });

  Currency_details copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? name,
    String? label,
    int? display,
    String? symbol,
    String? rate,
    int? nb_decimal,
    String? direction,
    int? rounding,
    String? countries_id_ban,
    Cms_attributescurrency_details? cms_attributescurrency_details,
    String? symbol_en,
    String? symbol_ar,
    String? separator_thousands,
    String? separator_decimal,
    String? name_en,
    String? name_ar,
    String? label_en,
    String? label_ar,
    String? name_fr,
    String? label_fr,
    String? symbol_fr,
    String? iso,
    String? seo_attributes,
  }) {
    return Currency_details(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      name: name ?? this.name,
      label: label ?? this.label,
      display: display ?? this.display,
      symbol: symbol ?? this.symbol,
      rate: rate ?? this.rate,
      nb_decimal: nb_decimal ?? this.nb_decimal,
      direction: direction ?? this.direction,
      rounding: rounding ?? this.rounding,
      countries_id_ban: countries_id_ban ?? this.countries_id_ban,
      cms_attributescurrency_details:
          cms_attributescurrency_details ?? this.cms_attributescurrency_details,
      symbol_en: symbol_en ?? this.symbol_en,
      symbol_ar: symbol_ar ?? this.symbol_ar,
      separator_thousands: separator_thousands ?? this.separator_thousands,
      separator_decimal: separator_decimal ?? this.separator_decimal,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      name_fr: name_fr ?? this.name_fr,
      label_fr: label_fr ?? this.label_fr,
      symbol_fr: symbol_fr ?? this.symbol_fr,
      iso: iso ?? this.iso,
      seo_attributes: seo_attributes ?? this.seo_attributes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'name': name,
      'label': label,
      'display': display,
      'symbol': symbol,
      'rate': rate,
      'nb_decimal': nb_decimal,
      'direction': direction,
      'rounding': rounding,
      'countries_id_ban': countries_id_ban,
      'cms_attributescurrency_details': cms_attributescurrency_details.toMap(),
      'symbol_en': symbol_en,
      'symbol_ar': symbol_ar,
      'separator_thousands': separator_thousands,
      'separator_decimal': separator_decimal,
      'name_en': name_en,
      'name_ar': name_ar,
      'label_en': label_en,
      'label_ar': label_ar,
      'name_fr': name_fr,
      'label_fr': label_fr,
      'symbol_fr': symbol_fr,
      'iso': iso,
      'seo_attributes': seo_attributes,
    };
  }

  factory Currency_details.fromMap(Map<String, dynamic> map) {
    return Currency_details(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      name: map['name'] ?? '',
      label: map['label'] ?? '',
      display: map['display']?.toInt() ?? 0,
      symbol: map['symbol'] ?? '',
      rate: map['rate'] ?? '',
      nb_decimal: map['nb_decimal']?.toInt() ?? 0,
      direction: map['direction'] ?? '',
      rounding: map['rounding']?.toInt() ?? 0,
      countries_id_ban: map['countries_id_ban'] ?? '',
      cms_attributescurrency_details:
          Cms_attributescurrency_details.fromMap(map['cms_attributes'] ?? {}),
      symbol_en: map['symbol_en'] ?? '',
      symbol_ar: map['symbol_ar'] ?? '',
      separator_thousands: map['separator_thousands'] ?? '',
      separator_decimal: map['separator_decimal'] ?? '',
      name_en: map['name_en'] ?? '',
      name_ar: map['name_ar'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      name_fr: map['name_fr'] ?? '',
      label_fr: map['label_fr'] ?? '',
      symbol_fr: map['symbol_fr'] ?? '',
      iso: map['iso'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Currency_details.fromJson(String source) =>
      Currency_details.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Currency_details(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, name: $name, label: $label, display: $display, symbol: $symbol, rate: $rate, nb_decimal: $nb_decimal, direction: $direction, rounding: $rounding, countries_id_ban: $countries_id_ban, cms_attributescurrency_details: $cms_attributescurrency_details, symbol_en: $symbol_en, symbol_ar: $symbol_ar, separator_thousands: $separator_thousands, separator_decimal: $separator_decimal, name_en: $name_en, name_ar: $name_ar, label_en: $label_en, label_ar: $label_ar, name_fr: $name_fr, label_fr: $label_fr, symbol_fr: $symbol_fr, iso: $iso, seo_attributes: $seo_attributes)';
  }
}

class Cms_attributescurrency_details {
  final String created_at;
  final String updated_at;
  final int version;
  Cms_attributescurrency_details({
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  Cms_attributescurrency_details copyWith({
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return Cms_attributescurrency_details(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created_at': created_at,
      'updated_at': updated_at,
      'version': version,
    };
  }

  factory Cms_attributescurrency_details.fromMap(Map<String, dynamic> map) {
    return Cms_attributescurrency_details(
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributescurrency_details.fromJson(String source) =>
      Cms_attributescurrency_details.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributescurrency_details(created_at: $created_at, updated_at: $updated_at, version: $version)';
}

class Cms_attributespurchaseHistory {
  final bool exported;
  Cms_attributespurchaseHistory({
    this.exported = false,
  });

  Cms_attributespurchaseHistory copyWith({
    bool? exported,
  }) {
    return Cms_attributespurchaseHistory(
      exported: exported ?? this.exported,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'exported': exported,
    };
  }

  factory Cms_attributespurchaseHistory.fromMap(Map<String, dynamic> map) {
    return Cms_attributespurchaseHistory(
      exported: map['exported'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributespurchaseHistory.fromJson(String source) =>
      Cms_attributespurchaseHistory.fromMap(json.decode(source));

  @override
  String toString() => 'Cms_attributespurchaseHistory(exported: $exported)';
}

class Currency_cod_details {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String name;
  final String label;
  final int display;
  final String symbol;
  final String rate;
  final int nb_decimal;
  final String direction;
  final int rounding;
  final String countries_id_ban;
  final Cms_attributescurrency_cod_details cms_attributescurrency_cod_details;
  final String symbol_en;
  final String symbol_ar;
  final String separator_thousands;
  final String separator_decimal;
  final String name_en;
  final String name_ar;
  final String label_en;
  final String label_ar;
  final String name_fr;
  final String label_fr;
  final String symbol_fr;
  final String iso;
  final String seo_attributes;
  Currency_cod_details({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.name = '',
    this.label = '',
    this.display = 0,
    this.symbol = '',
    this.rate = '',
    this.nb_decimal = 0,
    this.direction = '',
    this.rounding = 0,
    this.countries_id_ban = '',
    required this.cms_attributescurrency_cod_details,
    this.symbol_en = '',
    this.symbol_ar = '',
    this.separator_thousands = '',
    this.separator_decimal = '',
    this.name_en = '',
    this.name_ar = '',
    this.label_en = '',
    this.label_ar = '',
    this.name_fr = '',
    this.label_fr = '',
    this.symbol_fr = '',
    this.iso = '',
    this.seo_attributes = '',
  });

  Currency_cod_details copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? name,
    String? label,
    int? display,
    String? symbol,
    String? rate,
    int? nb_decimal,
    String? direction,
    int? rounding,
    String? countries_id_ban,
    Cms_attributescurrency_cod_details? cms_attributescurrency_cod_details,
    String? symbol_en,
    String? symbol_ar,
    String? separator_thousands,
    String? separator_decimal,
    String? name_en,
    String? name_ar,
    String? label_en,
    String? label_ar,
    String? name_fr,
    String? label_fr,
    String? symbol_fr,
    String? iso,
    String? seo_attributes,
  }) {
    return Currency_cod_details(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      name: name ?? this.name,
      label: label ?? this.label,
      display: display ?? this.display,
      symbol: symbol ?? this.symbol,
      rate: rate ?? this.rate,
      nb_decimal: nb_decimal ?? this.nb_decimal,
      direction: direction ?? this.direction,
      rounding: rounding ?? this.rounding,
      countries_id_ban: countries_id_ban ?? this.countries_id_ban,
      cms_attributescurrency_cod_details: cms_attributescurrency_cod_details ??
          this.cms_attributescurrency_cod_details,
      symbol_en: symbol_en ?? this.symbol_en,
      symbol_ar: symbol_ar ?? this.symbol_ar,
      separator_thousands: separator_thousands ?? this.separator_thousands,
      separator_decimal: separator_decimal ?? this.separator_decimal,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      name_fr: name_fr ?? this.name_fr,
      label_fr: label_fr ?? this.label_fr,
      symbol_fr: symbol_fr ?? this.symbol_fr,
      iso: iso ?? this.iso,
      seo_attributes: seo_attributes ?? this.seo_attributes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'name': name,
      'label': label,
      'display': display,
      'symbol': symbol,
      'rate': rate,
      'nb_decimal': nb_decimal,
      'direction': direction,
      'rounding': rounding,
      'countries_id_ban': countries_id_ban,
      'cms_attributescurrency_cod_details':
          cms_attributescurrency_cod_details.toMap(),
      'symbol_en': symbol_en,
      'symbol_ar': symbol_ar,
      'separator_thousands': separator_thousands,
      'separator_decimal': separator_decimal,
      'name_en': name_en,
      'name_ar': name_ar,
      'label_en': label_en,
      'label_ar': label_ar,
      'name_fr': name_fr,
      'label_fr': label_fr,
      'symbol_fr': symbol_fr,
      'iso': iso,
      'seo_attributes': seo_attributes,
    };
  }

  factory Currency_cod_details.fromMap(Map<String, dynamic> map) {
    return Currency_cod_details(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      name: map['name'] ?? '',
      label: map['label'] ?? '',
      display: map['display']?.toInt() ?? 0,
      symbol: map['symbol'] ?? '',
      rate: map['rate'] ?? '',
      nb_decimal: map['nb_decimal']?.toInt() ?? 0,
      direction: map['direction'] ?? '',
      rounding: map['rounding']?.toInt() ?? 0,
      countries_id_ban: map['countries_id_ban'] ?? '',
      cms_attributescurrency_cod_details:
          Cms_attributescurrency_cod_details.fromMap(map['cms_attributes']),
      symbol_en: map['symbol_en'] ?? '',
      symbol_ar: map['symbol_ar'] ?? '',
      separator_thousands: map['separator_thousands'] ?? '',
      separator_decimal: map['separator_decimal'] ?? '',
      name_en: map['name_en'] ?? '',
      name_ar: map['name_ar'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      name_fr: map['name_fr'] ?? '',
      label_fr: map['label_fr'] ?? '',
      symbol_fr: map['symbol_fr'] ?? '',
      iso: map['iso'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Currency_cod_details.fromJson(String source) =>
      Currency_cod_details.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Currency_cod_details(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, name: $name, label: $label, display: $display, symbol: $symbol, rate: $rate, nb_decimal: $nb_decimal, direction: $direction, rounding: $rounding, countries_id_ban: $countries_id_ban, cms_attributescurrency_cod_details: $cms_attributescurrency_cod_details, symbol_en: $symbol_en, symbol_ar: $symbol_ar, separator_thousands: $separator_thousands, separator_decimal: $separator_decimal, name_en: $name_en, name_ar: $name_ar, label_en: $label_en, label_ar: $label_ar, name_fr: $name_fr, label_fr: $label_fr, symbol_fr: $symbol_fr, iso: $iso, seo_attributes: $seo_attributes)';
  }
}

class Cms_attributescurrency_cod_details {
  final String created_at;
  final String updated_at;
  final int version;
  Cms_attributescurrency_cod_details({
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  Cms_attributescurrency_cod_details copyWith({
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return Cms_attributescurrency_cod_details(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created_at': created_at,
      'updated_at': updated_at,
      'version': version,
    };
  }

  factory Cms_attributescurrency_cod_details.fromMap(Map<String, dynamic> map) {
    return Cms_attributescurrency_cod_details(
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributescurrency_cod_details.fromJson(String source) =>
      Cms_attributescurrency_cod_details.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributescurrency_cod_details(created_at: $created_at, updated_at: $updated_at, version: $version)';
}

class Ecom_payment_methods_details {
  final int id;
  final String label;
  final String provider;
  Ecom_payment_methods_details({
    this.id = 0,
    this.label = '',
    this.provider = '',
  });

  Ecom_payment_methods_details copyWith({
    int? id,
    String? label,
    String? provider,
  }) {
    return Ecom_payment_methods_details(
      id: id ?? this.id,
      label: label ?? this.label,
      provider: provider ?? this.provider,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'label': label,
      'provider': provider,
    };
  }

  factory Ecom_payment_methods_details.fromMap(Map<String, dynamic> map) {
    return Ecom_payment_methods_details(
      id: map['id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      provider: map['provider'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ecom_payment_methods_details.fromJson(String source) =>
      Ecom_payment_methods_details.fromMap(json.decode(source));

  @override
  String toString() =>
      'Ecom_payment_methods_details(id: $id, label: $label, provider: $provider)';
}

class Ecom_stores_delivery_details {
  final int id;
  final String label;
  final String provider;
  Ecom_stores_delivery_details({
    this.id = 0,
    this.label = '',
    this.provider = '',
  });

  Ecom_stores_delivery_details copyWith({
    int? id,
    String? label,
    String? provider,
  }) {
    return Ecom_stores_delivery_details(
      id: id ?? this.id,
      label: label ?? this.label,
      provider: provider ?? this.provider,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'label': label,
      'provider': provider,
    };
  }

  factory Ecom_stores_delivery_details.fromMap(Map<String, dynamic> map) {
    return Ecom_stores_delivery_details(
      id: map['id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      provider: map['provider'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ecom_stores_delivery_details.fromJson(String source) =>
      Ecom_stores_delivery_details.fromMap(json.decode(source));

  @override
  String toString() =>
      'Ecom_stores_delivery_details(id: $id, label: $label, provider: $provider)';
}
