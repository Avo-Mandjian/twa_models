// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// class LeftMenuCategories {
//   final int id;
//   final String created_at;
//   final String updated_at;
//   final int locked;
//   final int cancelled;
//   final int version;
//   final int orders;
//   final List<String> ecom_stores_id;
//   final String label;
//   final String extension_image;
//   final String alt_image;
//   final String description;
//   final String seo_attributes;
//   final ImageLeftMenuCategories image;
//   LeftMenuCategories({
//     this.id = 0,
//     this.created_at = '',
//     this.updated_at = '',
//     this.locked = 0,
//     this.cancelled = 0,
//     this.version = 0,
//     this.orders = 0,
//     this.ecom_stores_id = const [],
//     this.label = '',
//     this.extension_image =
//         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//     this.alt_image =
//         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//     this.description = '',
//     this.seo_attributes = '',
//     required this.image,
//   });

//   LeftMenuCategories copyWith({
//     int? id,
//     String? created_at,
//     String? updated_at,
//     int? locked,
//     int? cancelled,
//     int? version,
//     int? orders,
//     List<String>? ecom_stores_id,
//     String? label,
//     String? extension_image,
//     String? alt_image,
//     String? description,
//     String? seo_attributes,
//     ImageLeftMenuCategories? image,
//   }) {
//     return LeftMenuCategories(
//       id: id ?? this.id,
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       locked: locked ?? this.locked,
//       cancelled: cancelled ?? this.cancelled,
//       version: version ?? this.version,
//       orders: orders ?? this.orders,
//       ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
//       label: label ?? this.label,
//       extension_image: extension_image ?? this.extension_image,
//       alt_image: alt_image ?? this.alt_image,
//       description: description ?? this.description,
//       seo_attributes: seo_attributes ?? this.seo_attributes,
//       image: image ?? this.image,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'locked': locked,
//       'cancelled': cancelled,
//       'version': version,
//       'orders': orders,
//       'ecom_stores_id': ecom_stores_id,
//       'label': label,
//       'extension_image': extension_image,
//       'alt_image': alt_image,
//       'description': description,
//       'seo_attributes': seo_attributes,
//       'image': image.toMap(),
//     };
//   }

//   factory LeftMenuCategories.fromMap(Map<String, dynamic> map) {
//     return LeftMenuCategories(
//       id: map['id']?.toInt() ?? 0,
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       locked: map['locked']?.toInt() ?? 0,
//       cancelled: map['cancelled']?.toInt() ?? 0,
//       version: map['version']?.toInt() ?? 0,
//       orders: map['orders']?.toInt() ?? 0,
//       ecom_stores_id: List<String>.from(map['ecom_stores_id'] ?? const []),
//       label: map['label'] ?? '',
//       extension_image: map['extension_image'] ??
//           'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//       alt_image: map['alt_image'] ??
//           'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//       description: map['description'] ?? '',
//       seo_attributes: map['seo_attributes'] ?? '',
//       image: ImageLeftMenuCategories.fromMap(map['image']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory LeftMenuCategories.fromJson(String source) =>
//       LeftMenuCategories.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'LeftMenuCategories(id: $id, created_at: $created_at, updated_at: $updated_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, label: $label, extension_image: $extension_image, alt_image: $alt_image, description: $description, seo_attributes: $seo_attributes, image: $image)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is LeftMenuCategories &&
//         other.id == id &&
//         other.created_at == created_at &&
//         other.updated_at == updated_at &&
//         other.locked == locked &&
//         other.cancelled == cancelled &&
//         other.version == version &&
//         other.orders == orders &&
//         listEquals(other.ecom_stores_id, ecom_stores_id) &&
//         other.label == label &&
//         other.extension_image == extension_image &&
//         other.alt_image == alt_image &&
//         other.description == description &&
//         other.seo_attributes == seo_attributes &&
//         other.image == image;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         created_at.hashCode ^
//         updated_at.hashCode ^
//         locked.hashCode ^
//         cancelled.hashCode ^
//         version.hashCode ^
//         orders.hashCode ^
//         ecom_stores_id.hashCode ^
//         label.hashCode ^
//         extension_image.hashCode ^
//         alt_image.hashCode ^
//         description.hashCode ^
//         seo_attributes.hashCode ^
//         image.hashCode;
//   }
// }

// class ImageLeftMenuCategories {
//   final String image;
//   final String thumb;
//   final String alt;
//   ImageLeftMenuCategories({
//     this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//     this.thumb = '',
//     this.alt = '',
//   });

//   ImageLeftMenuCategories copyWith({
//     String? image,
//     String? thumb,
//     String? alt,
//   }) {
//     return ImageLeftMenuCategories(
//       image: image ?? this.image,
//       thumb: thumb ?? this.thumb,
//       alt: alt ?? this.alt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'image': image,
//       'thumb': thumb,
//       'alt': alt,
//     };
//   }

//   factory ImageLeftMenuCategories.fromMap(Map<String, dynamic> map) {
//     return ImageLeftMenuCategories(
//       image: map['image'] ??
//           'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//       thumb: map['thumb'] ??
//           'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//       alt: map['alt'] ??
//           'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ImageLeftMenuCategories.fromJson(String source) =>
//       ImageLeftMenuCategories.fromMap(json.decode(source));

//   @override
//   String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is ImageLeftMenuCategories &&
//         other.image == image &&
//         other.thumb == thumb &&
//         other.alt == alt;
//   }

//   @override
//   int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
// }
