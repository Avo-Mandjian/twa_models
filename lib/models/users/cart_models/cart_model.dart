import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:twa_models/models/ecom/products_models/product_model.dart';

class Cart {
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
  final String cms_attributes;
  final int ecom_stores_id;
  final String seo_attributes;
  final List<dynamic> validation_errors;
  final bool cart_valid;
  final List<Item> items;
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
  // final String free_delivery;
  // final Minimum_order minimum_order;
  final double shipping;
  final String shipping_formatted;
  // final dynamic total_cod_formatted;
  Cart({
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
    this.cms_attributes = '',
    this.ecom_stores_id = 0,
    this.seo_attributes = '',
    this.validation_errors = const [],
    this.cart_valid = false,
    this.items = const [],
    this.count = 0,
    this.total_discount = 0,
    this.voucher = '',
    this.total_discount_formatted = '',
    this.subtotal = 0.0,
    this.subtotal_formatted = '',
    required this.breakdown,
    this.voucher_valid = false,
    this.total = 0.0,
    this.total_formatted = '',
    // this.free_delivery = '',
    // required this.minimum_order,
    this.shipping = 0.0,
    this.shipping_formatted = '',
    // this.total_cod_formatted = false,
  });

  Cart copyWith({
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
    String? cms_attributes,
    int? ecom_stores_id,
    String? seo_attributes,
    List<dynamic>? validation_errors,
    bool? cart_valid,
    List<Item>? items,
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
    // String? free_delivery,
    // Minimum_order? minimum_order,
    double? shipping,
    String? shipping_formatted,
    // dynamic total_cod_formatted,
  }) {
    return Cart(
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
      cms_attributes: cms_attributes ?? this.cms_attributes,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      validation_errors: validation_errors ?? this.validation_errors,
      cart_valid: cart_valid ?? this.cart_valid,
      items: items ?? this.items,
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
      shipping: shipping ?? this.shipping,
      shipping_formatted: shipping_formatted ?? this.shipping_formatted,
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
      'cms_attributes': cms_attributes,
      'ecom_stores_id': ecom_stores_id,
      'seo_attributes': seo_attributes,
      'validation_errors': validation_errors,
      'cart_valid': cart_valid,
      'items': items.map((x) => x.toMap()).toList(),
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
      // 'free_delivery': free_delivery,
      // 'minimum_order': minimum_order.toMap(),
      'shipping': shipping,
      'shipping_formatted': shipping_formatted,
      // 'total_cod_formatted': total_cod_formatted,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
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
      // ecom_users_temporary_id: jsonEncode(map['ecom_users_temporary_id'] ?? ''),
      // ecom_vouchers_id: jsonEncode(map['ecom_vouchers_id'] ?? -1),
      cms_attributes: map['cms_attributes'] ?? '',
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      validation_errors:
          List<dynamic>.from(map['validation_errors'] ?? const []),
      cart_valid: map['cart_valid'] ?? false,
      items: List<Item>.from(
        map['items']?.map((x) => Item.fromMap(x)) ?? const [],
      ),
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
      // free_delivery: jsonEncode(map['free_delivery'] ?? ''),
      // minimum_order: map['minimum_order'].runtimeType != bool
      //     ? Minimum_order.fromMap(map['minimum_order'])
      //     : Minimum_order(),
      shipping: map['shipping']?.toDouble() ?? 0.0,
      shipping_formatted: map['shipping_formatted'] ?? '',
      // total_cod_formatted: map['total_cod_formatted'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cart(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, ecom_users_id: $ecom_users_id, expires_at: $expires_at, purchased_at: $purchased_at, ecom_users_temporary_id: , ecom_vouchers_id: , cms_attributes: $cms_attributes, ecom_stores_id: $ecom_stores_id, seo_attributes: $seo_attributes, validation_errors: $validation_errors, cart_valid: $cart_valid, items: $items, count: $count, total_discount: $total_discount, voucher: $voucher, total_discount_formatted: $total_discount_formatted, subtotal: $subtotal, subtotal_formatted: $subtotal_formatted, breakdown: $breakdown, voucher_valid: $voucher_valid, total: $total, total_formatted: $total_formatted, free_delivery: , minimum_order: , shipping: $shipping, shipping_formatted: $shipping_formatted, total_cod_formatted: )';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart &&
            other.id == id &&
            other.created_at == created_at &&
            other.updated_at == updated_at &&
            other.deleted_at == deleted_at &&
            other.locked == locked &&
            other.cancelled == cancelled &&
            other.version == version &&
            other.ecom_users_id == ecom_users_id &&
            other.expires_at == expires_at &&
            other.purchased_at == purchased_at &&
            // other.ecom_users_temporary_id == ecom_users_temporary_id &&
            // other.ecom_vouchers_id == ecom_vouchers_id &&
            other.cms_attributes == cms_attributes &&
            other.ecom_stores_id == ecom_stores_id &&
            other.seo_attributes == seo_attributes &&
            listEquals(other.validation_errors, validation_errors) &&
            other.cart_valid == cart_valid &&
            listEquals(other.items, items) &&
            other.count == count &&
            other.total_discount == total_discount &&
            other.voucher == voucher &&
            other.total_discount_formatted == total_discount_formatted &&
            other.subtotal == subtotal &&
            other.subtotal_formatted == subtotal_formatted &&
            other.breakdown == breakdown &&
            other.voucher_valid == voucher_valid &&
            other.total == total &&
            other.total_formatted == total_formatted &&
            // other.free_delivery == free_delivery &&
            // other.minimum_order == minimum_order &&
            other.shipping == shipping &&
            other.shipping_formatted == shipping_formatted
        // &&
        // other.total_cod_formatted == total_cod_formatted
        ;
  }

  @override
  int get hashCode {
    return id.hashCode ^
            created_at.hashCode ^
            updated_at.hashCode ^
            deleted_at.hashCode ^
            locked.hashCode ^
            cancelled.hashCode ^
            version.hashCode ^
            ecom_users_id.hashCode ^
            expires_at.hashCode ^
            purchased_at.hashCode ^
            // ecom_users_temporary_id.hashCode ^
            // ecom_vouchers_id.hashCode ^
            cms_attributes.hashCode ^
            ecom_stores_id.hashCode ^
            seo_attributes.hashCode ^
            validation_errors.hashCode ^
            cart_valid.hashCode ^
            items.hashCode ^
            count.hashCode ^
            total_discount.hashCode ^
            voucher.hashCode ^
            total_discount_formatted.hashCode ^
            subtotal.hashCode ^
            subtotal_formatted.hashCode ^
            breakdown.hashCode ^
            voucher_valid.hashCode ^
            total.hashCode ^
            total_formatted.hashCode ^
            // free_delivery.hashCode ^
            // minimum_order.hashCode ^
            shipping.hashCode ^
            shipping_formatted.hashCode
        // ^
        // total_cod_formatted.hashCode
        ;
  }
}

class Item {
  final int id;
  final int ecom_products_id;
  final int quantity;
  final String modifiers;
  final String cms_attributes;
  final DetailsItem details;
  final List<CartItemModifierDetails> modifier_details;
  final double final_price;
  final String final_price_formatted;
  final String other_details;
  final String link;
  final String adjuster_price_old_formatted;

  Item({
    this.id = 0,
    this.adjuster_price_old_formatted = '',
    this.ecom_products_id = 0,
    this.quantity = 0,
    this.modifiers = '',
    this.cms_attributes = '',
    required this.details,
    required this.modifier_details,
    this.final_price = 0.0,
    this.final_price_formatted = '',
    this.other_details = '',
    this.link = '',
  });

  Item copyWith({
    int? id,
    int? ecom_products_id,
    String? final_price_formatted,
    String? adjuster_price_old_formatted,
    int? quantity,
    String? modifiers,
    String? cms_attributes,
    DetailsItem? details,
    List<CartItemModifierDetails>? modifier_details,
    double? final_price,
    String? other_details,
    String? link,
  }) {
    return Item(
      id: id ?? this.id,
      ecom_products_id: ecom_products_id ?? this.ecom_products_id,
      final_price_formatted:
          final_price_formatted ?? this.final_price_formatted,
      adjuster_price_old_formatted:
          adjuster_price_old_formatted ?? this.adjuster_price_old_formatted,
      quantity: quantity ?? this.quantity,
      modifiers: modifiers ?? this.modifiers,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      details: details ?? this.details,
      modifier_details: modifier_details ?? this.modifier_details,
      final_price: final_price ?? this.final_price,
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
      'cms_attributes': cms_attributes,
      'details': details.toMap(),
      'modifier_details': modifier_details,
      'final_price': final_price,
      'final_price_formatted': final_price_formatted,
      'adjuster_price_old_formatted': adjuster_price_old_formatted,
      'other_details': other_details,
      'link': link,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      ecom_products_id: map['ecom_products_id']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      modifiers: map['modifiers'] ?? '',
      cms_attributes: jsonEncode(
        map['cms_attributes'] ?? {},
      ),
      details:
          DetailsItem.fromMap(map['detailsitemsThird'] ?? map['details'] ?? {}),
      modifier_details: List<CartItemModifierDetails>.from(
        map['modifier_details']?.map((x) {
              if (x.runtimeType == CartItemModifierDetails) {
                return x;
              } else {
                return CartItemModifierDetails.fromMap(x);
              }
            }) ??
            const [],
      ),
      final_price: map['final_price']?.toDouble() ?? 0.0,
      final_price_formatted: map['final_price_formatted'] ?? '',
      adjuster_price_old_formatted: map['adjuster_price_old_formatted'] ?? '',
      other_details: map['other_details'].runtimeType == String
          ? map['other_details']
          : '',
      link: map['link'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, ecom_products_id: $ecom_products_id, quantity: $quantity, modifiers: $modifiers, cms_attributes: $cms_attributes, details: $details, modifier_details: $modifier_details, final_price: $final_price, final_price_formatted: $final_price_formatted, other_details: $other_details, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.ecom_products_id == ecom_products_id &&
        other.quantity == quantity &&
        other.modifiers == modifiers &&
        other.cms_attributes == cms_attributes &&
        other.details == details &&
        listEquals(other.modifier_details, modifier_details) &&
        other.final_price == final_price &&
        other.adjuster_price_old_formatted == adjuster_price_old_formatted &&
        other.final_price_formatted == final_price_formatted &&
        other.other_details == other_details &&
        other.link == link;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        ecom_products_id.hashCode ^
        quantity.hashCode ^
        modifiers.hashCode ^
        cms_attributes.hashCode ^
        details.hashCode ^
        modifier_details.hashCode ^
        final_price.hashCode ^
        adjuster_price_old_formatted.hashCode ^
        final_price_formatted.hashCode ^
        other_details.hashCode ^
        link.hashCode;
  }
}

class DetailsItem {
  final int id;
  final String extension_image;
  final String sku;
  final double price_ttc;
  // final String price_shelf;
  final int version;
  final int stock_quantity;
  final String family_group_id;
  final List<String> keywords;
  final List<Gallery> gallery;
  final String cms_attributes;
  final int discount;
  final double price;
  final String label;
  final String small_description;
  final String unit_price_formatted;
  final String unit_price_beforediscount_formatted;
  final String thumb;
  final String image;
  final String variation_primary;
  final String variation_secondary;
  DetailsItem({
    this.id = 0,
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.sku = '',
    this.price_ttc = 0.0,
    // this.price_shelf = '',
    this.version = 0,
    this.stock_quantity = 0,
    this.family_group_id = '',
    this.keywords = const [],
    this.gallery = const [],
    this.cms_attributes = '',
    this.discount = 0,
    this.price = 0.0,
    this.label = '',
    this.small_description = '',
    this.unit_price_formatted = '',
    this.unit_price_beforediscount_formatted = '',
    this.thumb = '',
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.variation_primary = '',
    this.variation_secondary = '',
  });

  DetailsItem copyWith({
    int? id,
    String? extension_image,
    String? sku,
    double? price_ttc,
    // String? price_shelf,
    int? version,
    int? stock_quantity,
    String? family_group_id,
    List<String>? keywords,
    List<Gallery>? gallery,
    String? cms_attributes,
    int? discount,
    double? price,
    String? label,
    String? small_description,
    String? unit_price_formatted,
    String? unit_price_beforediscount_formatted,
    String? thumb,
    String? image,
    String? variation_primary,
    String? variation_secondary,
  }) {
    return DetailsItem(
      id: id ?? this.id,
      extension_image: extension_image ?? this.extension_image,
      sku: sku ?? this.sku,
      price_ttc: price_ttc ?? this.price_ttc,
      // price_shelf: price_shelf ?? this.price_shelf,
      version: version ?? this.version,
      stock_quantity: stock_quantity ?? this.stock_quantity,
      family_group_id: family_group_id ?? this.family_group_id,
      keywords: keywords ?? this.keywords,
      gallery: gallery ?? this.gallery,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      discount: discount ?? this.discount,
      price: price ?? this.price,
      label: label ?? this.label,
      small_description: small_description ?? this.small_description,
      unit_price_formatted: unit_price_formatted ?? this.unit_price_formatted,
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
      'keywords': keywords,
      'gallery': gallery.map((x) => x.toMap()).toList(),
      'cms_attributes': cms_attributes,
      'discount': discount,
      'price': price,
      'label': label,
      'small_description': small_description,
      'unit_price_formatted': unit_price_formatted,
      'unit_price_beforediscount_formatted':
          unit_price_beforediscount_formatted,
      'thumb': thumb,
      'image': image,
      'variation_primary': variation_primary,
      'variation_secondary': variation_secondary,
    };
  }

  factory DetailsItem.fromMap(Map<String, dynamic> map) {
    return DetailsItem(
      id: map['id']?.toInt() ?? 0,
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      sku: map['sku'] ?? '',
      price_ttc: map['price_ttc']?.toDouble() ?? 0.0,
      // price_shelf: map['price_shelf']?.toString() ?? '',
      version: map['version']?.toInt() ?? 0,
      stock_quantity: map['stock_quantity']?.toInt() ?? 0,
      family_group_id: map['family_group_id'] ?? '',
      keywords: List<String>.from(map['keywords'] ?? const []),
      gallery: List<Gallery>.from(
        map['gallery']?.map((x) {
              if (x.runtimeType == Gallery) {
                return x;
              } else {
                return Gallery.fromMap(x);
              }
            }) ??
            const [],
      ),
      cms_attributes: jsonEncode(map['cms_attributes'] ?? ''),
      discount: map['discount']?.toInt() ?? 0,
      price: map['price']?.toDouble() ?? 0.0,
      label: map['label'] ?? '',
      small_description: map['small_description'] ?? '',
      unit_price_formatted: map['unit_price_formatted'] ?? '',
      unit_price_beforediscount_formatted:
          map['unit_price_beforediscount_formatted'] ?? '',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      variation_primary: map['variation_primary'] ?? '',
      variation_secondary: map['variation_secondary'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsItem.fromJson(String source) =>
      DetailsItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Details(id: $id, extension_image: $extension_image, sku: $sku, price_ttc: $price_ttc, price_shelf:, version: $version, stock_quantity: $stock_quantity, family_group_id: $family_group_id, keywords: $keywords, gallery: $gallery, cms_attributes: $cms_attributes, discount: $discount, price: $price, label: $label, small_description: $small_description, unit_price_formatted: $unit_price_formatted, unit_price_beforediscount_formatted: $unit_price_beforediscount_formatted, thumb: $thumb, image: $image, variation_primary: $variation_primary, variation_secondary: $variation_secondary)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DetailsItem &&
        other.id == id &&
        other.extension_image == extension_image &&
        other.sku == sku &&
        other.price_ttc == price_ttc &&
        // other.price_shelf == price_shelf &&
        other.version == version &&
        other.stock_quantity == stock_quantity &&
        other.family_group_id == family_group_id &&
        listEquals(other.keywords, keywords) &&
        listEquals(other.gallery, gallery) &&
        other.cms_attributes == cms_attributes &&
        other.discount == discount &&
        other.price == price &&
        other.label == label &&
        other.small_description == small_description &&
        other.unit_price_formatted == unit_price_formatted &&
        other.unit_price_beforediscount_formatted ==
            unit_price_beforediscount_formatted &&
        other.thumb == thumb &&
        other.image == image &&
        other.variation_primary == variation_primary &&
        other.variation_secondary == variation_secondary;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        extension_image.hashCode ^
        sku.hashCode ^
        price_ttc.hashCode ^
        // price_shelf.hashCode ^
        version.hashCode ^
        stock_quantity.hashCode ^
        family_group_id.hashCode ^
        keywords.hashCode ^
        gallery.hashCode ^
        cms_attributes.hashCode ^
        discount.hashCode ^
        price.hashCode ^
        label.hashCode ^
        small_description.hashCode ^
        unit_price_formatted.hashCode ^
        unit_price_beforediscount_formatted.hashCode ^
        thumb.hashCode ^
        image.hashCode ^
        variation_primary.hashCode ^
        variation_secondary.hashCode;
  }
}

// class Minimum_order {
//   final double value;
//   final String value_formatted;
//   final bool can_order;
//   Minimum_order({
//     this.value = 0.0,
//     this.value_formatted = '',
//     this.can_order = false,
//   });

//   Minimum_order copyWith({
//     double? value,
//     String? value_formatted,
//     bool? can_order,
//   }) {
//     return Minimum_order(
//       value: value ?? this.value,
//       value_formatted: value_formatted ?? this.value_formatted,
//       can_order: can_order ?? this.can_order,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'value': value,
//       'value_formatted': value_formatted,
//       'can_order': can_order,
//     };
//   }

//   factory Minimum_order.fromMap(Map<String, dynamic> map) {
//     return Minimum_order(
//       value: map['value']?.toDouble() ?? 0.0,
//       value_formatted: map['value_formatted'] ?? '',
//       can_order: map['can_order'] ?? false,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Minimum_order.fromJson(String source) =>
//       Minimum_order.fromMap(json.decode(source));

//   @override
//   String toString() =>
//       'Minimum_order(value: $value, value_formatted: $value_formatted, can_order: $can_order)';

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Minimum_order &&
//         other.value == value &&
//         other.value_formatted == value_formatted &&
//         other.can_order == can_order;
//   }

//   @override
//   int get hashCode =>
//       value.hashCode ^ value_formatted.hashCode ^ can_order.hashCode;
// }

class CartItemModifierDetails {
  final String label;
  final String note_available_title;
  final String message;
  final String price_formatted;
  CartItemModifierDetails({
    required this.label,
    required this.note_available_title,
    required this.message,
    required this.price_formatted,
  });

  CartItemModifierDetails copyWith({
    String? label,
    String? note_available_title,
    String? message,
    String? price_formatted,
  }) {
    return CartItemModifierDetails(
      label: label ?? this.label,
      note_available_title: note_available_title ?? this.note_available_title,
      message: message ?? this.message,
      price_formatted: price_formatted ?? this.price_formatted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'note_available_title': note_available_title,
      'message': message,
      'price_formatted': price_formatted,
    };
  }

  factory CartItemModifierDetails.fromMap(Map<String, dynamic> map) {
    return CartItemModifierDetails(
      label: map['label'] ?? '',
      note_available_title: map['note_available_title'] ?? '',
      message: map['message'] ?? '',
      price_formatted: map['price_formatted'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItemModifierDetails.fromJson(String source) =>
      CartItemModifierDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartItemModifierDetails(label: $label, note_available_title: $note_available_title, message: $message, price_formatted: $price_formatted)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItemModifierDetails &&
        other.label == label &&
        other.note_available_title == note_available_title &&
        other.message == message &&
        other.price_formatted == price_formatted;
  }

  @override
  int get hashCode {
    return label.hashCode ^
        note_available_title.hashCode ^
        message.hashCode ^
        price_formatted.hashCode;
  }
}
