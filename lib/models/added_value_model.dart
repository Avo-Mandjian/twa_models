import 'dart:convert';

import 'package:twa_models/models/ecom/products_models/product_model.dart';

class AddedValueModel {
  final int id;
  final String created_at;
  final String updated_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final String icon;
  final String label;
  final String description;
  final Cms_attributes cms_attributes;
  final List<String> ecom_stores_id;
  final Gallery image;
  AddedValueModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.icon = '',
    this.label = '',
    this.description = '',
    required this.cms_attributes,
    required this.image,
    this.ecom_stores_id = const [],
  });

  AddedValueModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    String? icon,
    String? label,
    String? description,
    Cms_attributes? cms_attributes,
    Gallery? image,
    List<String>? ecom_stores_id,
  }) {
    return AddedValueModel(
      id: id ?? this.id,
      image: image ?? this.image,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      icon: icon ?? this.icon,
      label: label ?? this.label,
      description: description ?? this.description,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'created_at': created_at,
      'updated_at': updated_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'orders': orders,
      'icon': icon,
      'label': label,
      'description': description,
      'cms_attributes': cms_attributes.toMap(),
      'ecom_stores_id': ecom_stores_id,
    };
  }

  factory AddedValueModel.fromMap(Map<String, dynamic> map) {
    return AddedValueModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      icon: map['icon'] ?? '',
      label: map['label'] ?? '',
      description: map['description'] ?? '',
      cms_attributes: Cms_attributes.fromMap(map['cms_attributes'] ?? {}),
      image: Gallery.fromMap(map['image'] ?? {}),
      ecom_stores_id: List<String>.from(map['ecom_stores_id']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddedValueModel.fromJson(String source) =>
      AddedValueModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AddedValueModel(id: $id, created_at: $created_at, updated_at: $updated_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, icon: $icon, label: $label, description: $description, cms_attributes: $cms_attributes, ecom_stores_id: $ecom_stores_id)';
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
}
