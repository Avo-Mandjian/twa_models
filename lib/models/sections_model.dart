// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:patchi/app/data/ecom/collections_models/collections_model.dart';

// class SectionModel {
//   final int id;
//   final String created_at;
//   final String updated_at;
//   final String deleted_at;
//   final int locked;
//   final int cancelled;
//   final int version;
//   final int orders;
//   final String label;
//   final int published;
//   final List<String> keywords;
//   final String label_en;
//   final String label_ar;
//   final String label_fr;
//   List<CollectionsModel>? collectionsModel;
//   SectionModel({
//     this.id = 0,
//     this.created_at = '',
//     this.collectionsModel,
//     this.updated_at = '',
//     this.deleted_at = '',
//     this.locked = 0,
//     this.cancelled = 0,
//     this.version = 0,
//     this.orders = 0,
//     this.label = '',
//     this.published = 0,
//     this.keywords = const [],
//     this.label_en = '',
//     this.label_ar = '',
//     this.label_fr = '',
//   });

//   SectionModel copyWith({
//     int? id,
//     String? created_at,
//     String? updated_at,
//     String? deleted_at,
//     int? locked,
//     int? cancelled,
//     int? version,
//     int? orders,
//     String? label,
//     int? published,
//     List<String>? keywords,
//     String? label_en,
//     String? label_ar,
//     String? label_fr,
//   }) {
//     return SectionModel(
//       id: id ?? this.id,
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       deleted_at: deleted_at ?? this.deleted_at,
//       locked: locked ?? this.locked,
//       cancelled: cancelled ?? this.cancelled,
//       version: version ?? this.version,
//       orders: orders ?? this.orders,
//       label: label ?? this.label,
//       published: published ?? this.published,
//       keywords: keywords ?? this.keywords,
//       label_en: label_en ?? this.label_en,
//       label_ar: label_ar ?? this.label_ar,
//       label_fr: label_fr ?? this.label_fr,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'deleted_at': deleted_at,
//       'locked': locked,
//       'cancelled': cancelled,
//       'version': version,
//       'orders': orders,
//       'label': label,
//       'published': published,
//       'keywords': keywords,
//       'label_en': label_en,
//       'label_ar': label_ar,
//       'label_fr': label_fr,
//     };
//   }

//   factory SectionModel.fromMap(Map<String, dynamic> map) {
//     return SectionModel(
//       id: map['id']?.toInt() ?? 0,
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       deleted_at: map['deleted_at'] ?? '',
//       locked: map['locked']?.toInt() ?? 0,
//       cancelled: map['cancelled']?.toInt() ?? 0,
//       version: map['version']?.toInt() ?? 0,
//       orders: map['orders']?.toInt() ?? 0,
//       label: map['label'] ?? '',
//       published: map['published']?.toInt() ?? 0,
//       keywords: List<String>.from(map['keywords'] ?? const []),
//       label_en: map['label_en'] ?? '',
//       label_ar: map['label_ar'] ?? '',
//       label_fr: map['label_fr'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory SectionModel.fromJson(String source) =>
//       SectionModel.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'SectionModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, label: $label, published: $published, keywords: $keywords, label_en: $label_en, label_ar: $label_ar, label_fr: $label_fr)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is SectionModel &&
//         other.id == id &&
//         other.created_at == created_at &&
//         other.updated_at == updated_at &&
//         other.deleted_at == deleted_at &&
//         other.locked == locked &&
//         other.cancelled == cancelled &&
//         other.version == version &&
//         other.orders == orders &&
//         other.label == label &&
//         other.published == published &&
//         listEquals(other.keywords, keywords) &&
//         other.label_en == label_en &&
//         other.label_ar == label_ar &&
//         other.label_fr == label_fr;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         created_at.hashCode ^
//         updated_at.hashCode ^
//         deleted_at.hashCode ^
//         locked.hashCode ^
//         cancelled.hashCode ^
//         version.hashCode ^
//         orders.hashCode ^
//         label.hashCode ^
//         published.hashCode ^
//         keywords.hashCode ^
//         label_en.hashCode ^
//         label_ar.hashCode ^
//         label_fr.hashCode;
//   }
// }
