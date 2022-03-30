import 'dart:convert';

import 'package:flutter/foundation.dart';

class FrontEndMenuModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final List<String> ecom_stores_id;
  final String label;
  final int depth;
  final String fields;
  final String slug;
  final String seo_attributes;
  final int orders;
  FrontEndMenuModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.ecom_stores_id = const [],
    this.label = '',
    this.depth = 0,
    this.fields = '',
    this.slug = '',
    this.seo_attributes = '',
    this.orders = 0,
  });

  FrontEndMenuModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    List<String>? ecom_stores_id,
    String? label,
    int? depth,
    String? fields,
    String? slug,
    String? seo_attributes,
    int? orders,
  }) {
    return FrontEndMenuModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      label: label ?? this.label,
      depth: depth ?? this.depth,
      fields: fields ?? this.fields,
      slug: slug ?? this.slug,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      orders: orders ?? this.orders,
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
      'ecom_stores_id': ecom_stores_id,
      'label': label,
      'depth': depth,
      'fields': fields,
      'slug': slug,
      'seo_attributes': seo_attributes,
      'orders': orders,
    };
  }

  factory FrontEndMenuModel.fromMap(Map<String, dynamic> map) {
    return FrontEndMenuModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      ecom_stores_id: List<String>.from(map['ecom_stores_id'] ?? const []),
      label: map['label'] ?? '',
      depth: map['depth']?.toInt() ?? 0,
      fields: map['fields'] ?? '',
      slug: map['slug'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      orders: map['orders']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FrontEndMenuModel.fromJson(String source) =>
      FrontEndMenuModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FrontEndMenuModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, ecom_stores_id: $ecom_stores_id, label: $label, depth: $depth, fields: $fields, slug: $slug, seo_attributes: $seo_attributes, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FrontEndMenuModel &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        listEquals(other.ecom_stores_id, ecom_stores_id) &&
        other.label == label &&
        other.depth == depth &&
        other.fields == fields &&
        other.slug == slug &&
        other.seo_attributes == seo_attributes &&
        other.orders == orders;
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
        ecom_stores_id.hashCode ^
        label.hashCode ^
        depth.hashCode ^
        fields.hashCode ^
        slug.hashCode ^
        seo_attributes.hashCode ^
        orders.hashCode;
  }
}
