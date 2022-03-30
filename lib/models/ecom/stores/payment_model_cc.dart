import 'dart:convert';

class PaymentMethod {
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
  final String description;
  final String label_en;
  final String label_ar;
  final String description_en;
  final String description_ar;
  final String label_fr;
  final String description_fr;
  final String seo_attributes;
  PaymentMethod({
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
    this.description = '',
    this.label_en = '',
    this.label_ar = '',
    this.description_en = '',
    this.description_ar = '',
    this.label_fr = '',
    this.description_fr = '',
    this.seo_attributes = '',
  });

  PaymentMethod copyWith({
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
    String? description,
    String? label_en,
    String? label_ar,
    String? description_en,
    String? description_ar,
    String? label_fr,
    String? description_fr,
    String? seo_attributes,
  }) {
    return PaymentMethod(
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
      description: description ?? this.description,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      description_en: description_en ?? this.description_en,
      description_ar: description_ar ?? this.description_ar,
      label_fr: label_fr ?? this.label_fr,
      description_fr: description_fr ?? this.description_fr,
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
      'orders': orders,
      'ecom_stores_id': ecom_stores_id,
      'label': label,
      'provider': provider,
      'charge_extra': charge_extra,
      'description': description,
      'label_en': label_en,
      'label_ar': label_ar,
      'description_en': description_en,
      'description_ar': description_ar,
      'label_fr': label_fr,
      'description_fr': description_fr,
      'seo_attributes': seo_attributes,
    };
  }

  factory PaymentMethod.fromMap(Map<String, dynamic> map) {
    return PaymentMethod(
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
      description: map['description'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      description_en: map['description_en'] ?? '',
      description_ar: map['description_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      description_fr: map['description_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethod.fromJson(String source) =>
      PaymentMethod.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentMethod(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, label: $label, provider: $provider, charge_extra: $charge_extra, description: $description, label_en: $label_en, label_ar: $label_ar, description_en: $description_en, description_ar: $description_ar, label_fr: $label_fr, description_fr: $description_fr, seo_attributes: $seo_attributes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentMethod &&
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
        other.description == description &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.description_en == description_en &&
        other.description_ar == description_ar &&
        other.label_fr == label_fr &&
        other.description_fr == description_fr &&
        other.seo_attributes == seo_attributes;
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
        description.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        description_en.hashCode ^
        description_ar.hashCode ^
        label_fr.hashCode ^
        description_fr.hashCode ^
        seo_attributes.hashCode;
  }
}
