import 'dart:convert';

import 'package:flutter/foundation.dart';

class DeliveryOptionModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final int ecom_stores_id;
  final String label;
  final String provider;
  final int charge_extra;
  final Cms_attributes cms_attributes;
  final int billing_required;
  final int location_required;
  final String description;
  final int min_days;
  final String label_en;
  final String label_ar;
  final String description_en;
  final String description_ar;
  final String label_fr;
  final String description_fr;
  final String customized_shipping_fees;
  final List<Shipping_fees_range> shipping_fees_ranges;
  final String seo_attributes;
  final String shipping_cost_fallback;
  final String pricing_per_state;
  DeliveryOptionModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.ecom_stores_id = 0,
    this.label = '',
    this.provider = '',
    this.charge_extra = 0,
    required this.cms_attributes,
    this.billing_required = 0,
    this.location_required = 0,
    this.description = '',
    this.min_days = 0,
    this.label_en = '',
    this.label_ar = '',
    this.description_en = '',
    this.description_ar = '',
    this.label_fr = '',
    this.description_fr = '',
    this.customized_shipping_fees = '',
    this.shipping_fees_ranges = const [],
    this.seo_attributes = '',
    this.shipping_cost_fallback = '',
    this.pricing_per_state = '',
  });

  DeliveryOptionModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    int? ecom_stores_id,
    String? label,
    String? provider,
    int? charge_extra,
    Cms_attributes? cms_attributes,
    int? billing_required,
    int? location_required,
    String? description,
    int? min_days,
    String? label_en,
    String? label_ar,
    String? description_en,
    String? description_ar,
    String? label_fr,
    String? description_fr,
    String? customized_shipping_fees,
    List<Shipping_fees_range>? shipping_fees_ranges,
    String? seo_attributes,
    String? shipping_cost_fallback,
    String? pricing_per_state,
  }) {
    return DeliveryOptionModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      label: label ?? this.label,
      provider: provider ?? this.provider,
      charge_extra: charge_extra ?? this.charge_extra,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      billing_required: billing_required ?? this.billing_required,
      location_required: location_required ?? this.location_required,
      description: description ?? this.description,
      min_days: min_days ?? this.min_days,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      description_en: description_en ?? this.description_en,
      description_ar: description_ar ?? this.description_ar,
      label_fr: label_fr ?? this.label_fr,
      description_fr: description_fr ?? this.description_fr,
      customized_shipping_fees:
          customized_shipping_fees ?? this.customized_shipping_fees,
      shipping_fees_ranges: shipping_fees_ranges ?? this.shipping_fees_ranges,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      shipping_cost_fallback:
          shipping_cost_fallback ?? this.shipping_cost_fallback,
      pricing_per_state: pricing_per_state ?? this.pricing_per_state,
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
      'orders': orders,
      'ecom_stores_id': ecom_stores_id,
      'label': label,
      'provider': provider,
      'charge_extra': charge_extra,
      'cms_attributes': cms_attributes.toMap(),
      'billing_required': billing_required,
      'location_required': location_required,
      'description': description,
      'min_days': min_days,
      'label_en': label_en,
      'label_ar': label_ar,
      'description_en': description_en,
      'description_ar': description_ar,
      'label_fr': label_fr,
      'description_fr': description_fr,
      'customized_shipping_fees': customized_shipping_fees,
      'shipping_fees_ranges':
          shipping_fees_ranges.map((x) => x.toMap()).toList(),
      'seo_attributes': seo_attributes,
      'shipping_cost_fallback': shipping_cost_fallback,
      'pricing_per_state': pricing_per_state,
    };
  }

  factory DeliveryOptionModel.fromMap(Map<String, dynamic> map) {
    return DeliveryOptionModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      provider: map['provider'] ?? '',
      charge_extra: map['charge_extra']?.toInt() ?? 0,
      cms_attributes: Cms_attributes.fromMap(map['cms_attributes'] ?? {}),
      billing_required: map['billing_required']?.toInt() ?? 0,
      location_required: map['location_required']?.toInt() ?? 0,
      description: map['description'] ?? '',
      min_days: map['min_days']?.toInt() ?? 0,
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      description_en: map['description_en'] ?? '',
      description_ar: map['description_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      description_fr: map['description_fr'] ?? '',
      customized_shipping_fees: map['customized_shipping_fees'] ?? '',
      shipping_fees_ranges: List<Shipping_fees_range>.from(
        map['shipping_fees_ranges']
                ?.map((x) => Shipping_fees_range.fromMap(x)) ??
            const [],
      ),
      seo_attributes: map['seo_attributes'] ?? '',
      shipping_cost_fallback: map['shipping_cost_fallback']?.toString() ?? '',
      pricing_per_state: jsonEncode(map['pricing_per_state'] ?? ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory DeliveryOptionModel.fromJson(String source) =>
      DeliveryOptionModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DeliveryOptionModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, label: $label, provider: $provider, charge_extra: $charge_extra, cms_attributes: $cms_attributes, billing_required: $billing_required, location_required: $location_required, description: $description, min_days: $min_days, label_en: $label_en, label_ar: $label_ar, description_en: $description_en, description_ar: $description_ar, label_fr: $label_fr, description_fr: $description_fr, customized_shipping_fees: $customized_shipping_fees, shipping_fees_ranges: $shipping_fees_ranges, seo_attributes: $seo_attributes, shipping_cost_fallback: $shipping_cost_fallback, pricing_per_state: $pricing_per_state)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DeliveryOptionModel &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.ecom_stores_id == ecom_stores_id &&
        other.label == label &&
        other.provider == provider &&
        other.charge_extra == charge_extra &&
        other.cms_attributes == cms_attributes &&
        other.billing_required == billing_required &&
        other.location_required == location_required &&
        other.description == description &&
        other.min_days == min_days &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.description_en == description_en &&
        other.description_ar == description_ar &&
        other.label_fr == label_fr &&
        other.description_fr == description_fr &&
        other.customized_shipping_fees == customized_shipping_fees &&
        listEquals(other.shipping_fees_ranges, shipping_fees_ranges) &&
        other.seo_attributes == seo_attributes &&
        other.shipping_cost_fallback == shipping_cost_fallback &&
        other.pricing_per_state == pricing_per_state;
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
        orders.hashCode ^
        ecom_stores_id.hashCode ^
        label.hashCode ^
        provider.hashCode ^
        charge_extra.hashCode ^
        cms_attributes.hashCode ^
        billing_required.hashCode ^
        location_required.hashCode ^
        description.hashCode ^
        min_days.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        description_en.hashCode ^
        description_ar.hashCode ^
        label_fr.hashCode ^
        description_fr.hashCode ^
        customized_shipping_fees.hashCode ^
        shipping_fees_ranges.hashCode ^
        seo_attributes.hashCode ^
        shipping_cost_fallback.hashCode ^
        pricing_per_state.hashCode;
  }
}

class Cms_attributes {
  final String created_at;
  final String updated_at;
  final int version;
  Cms_attributes({
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  Cms_attributes copyWith({
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return Cms_attributes(
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

  factory Cms_attributes.fromMap(Map<String, dynamic> map) {
    return Cms_attributes(
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributes.fromJson(String source) =>
      Cms_attributes.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributes(created_at: $created_at, updated_at: $updated_at, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cms_attributes &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.version == version;
  }

  @override
  int get hashCode =>
      created_at.hashCode ^ updated_at.hashCode ^ version.hashCode;
}

class Shipping_fees_range {
  final String min_weight;
  final String max_weight;
  final String min_charge;
  Shipping_fees_range({
    this.min_weight = '',
    this.max_weight = '',
    this.min_charge = '',
  });

  Shipping_fees_range copyWith({
    String? min_weight,
    String? max_weight,
    String? min_charge,
  }) {
    return Shipping_fees_range(
      min_weight: min_weight ?? this.min_weight,
      max_weight: max_weight ?? this.max_weight,
      min_charge: min_charge ?? this.min_charge,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'min_weight': min_weight,
      'max_weight': max_weight,
      'min_charge': min_charge,
    };
  }

  factory Shipping_fees_range.fromMap(Map<String, dynamic> map) {
    return Shipping_fees_range(
      min_weight: map['min_weight'] ?? '',
      max_weight: map['max_weight'] ?? '',
      min_charge: map['min_charge'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Shipping_fees_range.fromJson(String source) =>
      Shipping_fees_range.fromMap(json.decode(source));

  @override
  String toString() =>
      'Shipping_fees_range(min_weight: $min_weight, max_weight: $max_weight, min_charge: $min_charge)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Shipping_fees_range &&
        other.min_weight == min_weight &&
        other.max_weight == max_weight &&
        other.min_charge == min_charge;
  }

  @override
  int get hashCode =>
      min_weight.hashCode ^ max_weight.hashCode ^ min_charge.hashCode;
}
