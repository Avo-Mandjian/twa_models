import 'dart:convert';

import 'package:flutter/foundation.dart';

class SubcategoryModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final String label;
  final int ecom_categories_id;
  final String extension_image;
  final String alt_image;
  final Cms_attributesSubcategoryModel cms_attributes;
  final int display;
  final String description;
  final String label_en;
  final String label_ar;
  final String description_en;
  final String description_ar;
  final String label_fr;
  final String description_fr;
  final List<String> ecom_stores_id;
  final ImageSubcategoryModel image;
  SubcategoryModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.label = '',
    this.ecom_categories_id = 0,
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    required this.cms_attributes,
    this.display = 0,
    this.description = '',
    this.label_en = '',
    this.label_ar = '',
    this.description_en = '',
    this.description_ar = '',
    this.label_fr = '',
    this.description_fr = '',
    this.ecom_stores_id = const [],
    required this.image,
  });

  SubcategoryModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    String? label,
    int? ecom_categories_id,
    String? extension_image,
    String? alt_image,
    Cms_attributesSubcategoryModel? cms_attributes,
    int? display,
    String? description,
    String? label_en,
    String? label_ar,
    String? description_en,
    String? description_ar,
    String? label_fr,
    String? description_fr,
    List<String>? ecom_stores_id,
    ImageSubcategoryModel? image,
  }) {
    return SubcategoryModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      label: label ?? this.label,
      ecom_categories_id: ecom_categories_id ?? this.ecom_categories_id,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      display: display ?? this.display,
      description: description ?? this.description,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      description_en: description_en ?? this.description_en,
      description_ar: description_ar ?? this.description_ar,
      label_fr: label_fr ?? this.label_fr,
      description_fr: description_fr ?? this.description_fr,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      image: image ?? this.image,
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
      'label': label,
      'ecom_categories_id': ecom_categories_id,
      'extension_image': extension_image,
      'alt_image': alt_image,
      'cms_attributes': cms_attributes.toMap(),
      'display': display,
      'description': description,
      'label_en': label_en,
      'label_ar': label_ar,
      'description_en': description_en,
      'description_ar': description_ar,
      'label_fr': label_fr,
      'description_fr': description_fr,
      'ecom_stores_id': ecom_stores_id,
      'image': image.toMap(),
    };
  }

  factory SubcategoryModel.fromMap(Map<String, dynamic> map) {
    return SubcategoryModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      label: map['label'] ?? '',
      ecom_categories_id: map['ecom_categories_id']?.toInt() ?? 0,
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      cms_attributes:
          Cms_attributesSubcategoryModel.fromMap(map['cms_attributes'] ?? {}),
      display: map['display']?.toInt() ?? 0,
      description: map['description'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      description_en: map['description_en'] ?? '',
      description_ar: map['description_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      description_fr: map['description_fr'] ?? '',
      ecom_stores_id: List<String>.from(map['ecom_stores_id'] ?? const []),
      image: ImageSubcategoryModel.fromMap(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SubcategoryModel.fromJson(String source) =>
      SubcategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SubcategoryModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, label: $label, ecom_categories_id: $ecom_categories_id, extension_image: $extension_image, alt_image: $alt_image, cms_attributes: $cms_attributes, display: $display, description: $description, label_en: $label_en, label_ar: $label_ar, description_en: $description_en, description_ar: $description_ar, label_fr: $label_fr, description_fr: $description_fr, ecom_stores_id: $ecom_stores_id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SubcategoryModel &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.label == label &&
        other.ecom_categories_id == ecom_categories_id &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        other.cms_attributes == cms_attributes &&
        other.display == display &&
        other.description == description &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.description_en == description_en &&
        other.description_ar == description_ar &&
        other.label_fr == label_fr &&
        other.description_fr == description_fr &&
        listEquals(other.ecom_stores_id, ecom_stores_id) &&
        other.image == image;
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
        label.hashCode ^
        ecom_categories_id.hashCode ^
        extension_image.hashCode ^
        alt_image.hashCode ^
        cms_attributes.hashCode ^
        display.hashCode ^
        description.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        description_en.hashCode ^
        description_ar.hashCode ^
        label_fr.hashCode ^
        description_fr.hashCode ^
        ecom_stores_id.hashCode ^
        image.hashCode;
  }
}

class Cms_attributesSubcategoryModel {
  final int attributes_display_homepage;
  Cms_attributesSubcategoryModel({
    this.attributes_display_homepage = 0,
  });

  Cms_attributesSubcategoryModel copyWith({
    int? attributes_display_homepage,
  }) {
    return Cms_attributesSubcategoryModel(
      attributes_display_homepage:
          attributes_display_homepage ?? this.attributes_display_homepage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'attributes_display_homepage': attributes_display_homepage,
    };
  }

  factory Cms_attributesSubcategoryModel.fromMap(Map<String, dynamic> map) {
    return Cms_attributesSubcategoryModel(
      attributes_display_homepage:
          map['attributes_display_homepage']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributesSubcategoryModel.fromJson(String source) =>
      Cms_attributesSubcategoryModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributes(attributes_display_homepage: $attributes_display_homepage)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cms_attributesSubcategoryModel &&
        other.attributes_display_homepage == attributes_display_homepage;
  }

  @override
  int get hashCode => attributes_display_homepage.hashCode;
}

class ImageSubcategoryModel {
  final String image;
  final String thumb;
  final String alt;
  ImageSubcategoryModel({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  ImageSubcategoryModel copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return ImageSubcategoryModel(
      image: image ?? this.image,
      thumb: thumb ?? this.thumb,
      alt: alt ?? this.alt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'thumb': thumb,
      'alt': alt,
    };
  }

  factory ImageSubcategoryModel.fromMap(Map<String, dynamic> map) {
    return ImageSubcategoryModel(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageSubcategoryModel.fromJson(String source) =>
      ImageSubcategoryModel.fromMap(json.decode(source));

  @override
  String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageSubcategoryModel &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}
