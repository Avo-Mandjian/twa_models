import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../products_models/product_model.dart';

class CollectionsModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final String ecom_stores_id;
  final int display_homepage;
  final int display;
  final String label;
  final String ecom_sections_id;
  final String extension_image;
  final String alt_image;
  final List<String> keywords;
  final String label_en;
  final String label_ar;
  final String label_fr;
  final String mode;
  final String ecom_subcategories_id;
  final String ecom_products_filters_id;
  final String seo_attributes;
  final String description;
  final String description_en;
  final String description_ar;
  final String description_fr;
  final Product? products;
  final String phone_country_code;
  final String phone_original;
  final String image;
  final String thumb;
  final Cms_attributesCollectionModel? cms_attributes;
  CollectionsModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.ecom_stores_id = '',
    this.display_homepage = 0,
    this.display = 0,
    this.label = '',
    this.ecom_sections_id = '',
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.keywords = const [],
    this.label_en = '',
    this.label_ar = '',
    this.label_fr = '',
    this.mode = '',
    this.ecom_subcategories_id = '',
    this.ecom_products_filters_id = '',
    this.seo_attributes = '',
    this.description = '',
    this.description_en = '',
    this.description_ar = '',
    this.description_fr = '',
    this.products,
    this.phone_country_code = '',
    this.phone_original = '',
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.cms_attributes,
  });

  CollectionsModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    String? ecom_stores_id,
    int? display_homepage,
    int? display,
    String? label,
    String? ecom_sections_id,
    String? extension_image,
    String? alt_image,
    List<String>? keywords,
    String? label_en,
    String? label_ar,
    String? label_fr,
    String? mode,
    String? ecom_subcategories_id,
    String? ecom_products_filters_id,
    String? seo_attributes,
    String? description,
    String? description_en,
    String? description_ar,
    String? description_fr,
    Product? products,
    String? phone_country_code,
    String? phone_original,
    String? image,
    String? thumb,
    Cms_attributesCollectionModel? cms_attributes,
  }) {
    return CollectionsModel(
      cms_attributes: cms_attributes ?? this.cms_attributes,
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      display_homepage: display_homepage ?? this.display_homepage,
      display: display ?? this.display,
      label: label ?? this.label,
      ecom_sections_id: ecom_sections_id ?? this.ecom_sections_id,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      keywords: keywords ?? this.keywords,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      label_fr: label_fr ?? this.label_fr,
      mode: mode ?? this.mode,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      ecom_products_filters_id:
          ecom_products_filters_id ?? this.ecom_products_filters_id,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      description: description ?? this.description,
      description_en: description_en ?? this.description_en,
      description_ar: description_ar ?? this.description_ar,
      description_fr: description_fr ?? this.description_fr,
      products: products ?? this.products,
      phone_country_code: phone_country_code ?? this.phone_country_code,
      phone_original: phone_original ?? this.phone_original,
      image: image ?? this.image,
      thumb: thumb ?? this.thumb,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cms_attributes': cms_attributes?.toMap(),
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'orders': orders,
      'ecom_stores_id': ecom_stores_id,
      'display_homepage': display_homepage,
      'display': display,
      'label': label,
      'ecom_sections_id': ecom_sections_id,
      'extension_image': extension_image,
      'alt_image': alt_image,
      'keywords': keywords,
      'label_en': label_en,
      'label_ar': label_ar,
      'label_fr': label_fr,
      'mode': mode,
      'ecom_subcategories_id': ecom_subcategories_id,
      'ecom_products_filters_id': ecom_products_filters_id,
      'seo_attributes': seo_attributes,
      'description': description,
      'description_en': description_en,
      'description_ar': description_ar,
      'description_fr': description_fr,
      'products': products?.toMap(),
      'phone_country_code': phone_country_code,
      'phone_original': phone_original,
      'image': image,
      'thumb': thumb,
    };
  }

  factory CollectionsModel.fromMap(Map<String, dynamic> map) {
    return CollectionsModel(
      cms_attributes: Cms_attributesCollectionModel.fromMap(
          map['cms_attributes'] ?? Cms_attributesCollectionModel()),
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      ecom_stores_id: jsonEncode(map['ecom_stores_id'] ?? ['']),
      display_homepage: map['display_homepage']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      label: map['label'] ?? '',
      ecom_sections_id: jsonEncode(map['ecom_sections_id'] ?? ['']),
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      keywords: List<String>.from(map['keywords'] ?? const []),
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      mode: map['mode'] ?? '',
      ecom_subcategories_id: map['ecom_subcategories_id'].runtimeType == String
          ? map['ecom_subcategories_id']
          : jsonEncode(map['ecom_subcategories_id'] ?? ''),
      ecom_products_filters_id: map['ecom_products_filters_id'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      description: map['description'] ?? '',
      description_en: map['description_en'] ?? '',
      description_ar: map['description_ar'] ?? '',
      description_fr: map['description_fr'] ?? '',
      products: Product.fromMap(
          map['products'] ?? Product(request: Request()).toMap()),
      phone_country_code: map['phone_country_code'] ?? '',
      phone_original: map['phone_original'] ?? '',
      image: map['image'].runtimeType != String
          ? map['image']['image']
          : map['image'] ??
              'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory CollectionsModel.fromJson(String source) =>
      CollectionsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CollectionsModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, display_homepage: $display_homepage, display: $display, label: $label, ecom_sections_id: $ecom_sections_id, extension_image: $extension_image, alt_image: $alt_image, keywords: $keywords, label_en: $label_en, label_ar: $label_ar, label_fr: $label_fr, mode: $mode, ecom_subcategories_id: $ecom_subcategories_id, ecom_products_filters_id: $ecom_products_filters_id, seo_attributes: $seo_attributes, description: $description, description_en: $description_en, description_ar: $description_ar, description_fr: $description_fr, products: $products, phone_country_code: $phone_country_code, phone_original: $phone_original, image: $image, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CollectionsModel &&
        other.id == id &&
        other.cms_attributes == cms_attributes &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.ecom_stores_id == ecom_stores_id &&
        other.display_homepage == display_homepage &&
        other.display == display &&
        other.label == label &&
        other.ecom_sections_id == ecom_sections_id &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        listEquals(other.keywords, keywords) &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.label_fr == label_fr &&
        other.mode == mode &&
        other.ecom_subcategories_id == ecom_subcategories_id &&
        other.ecom_products_filters_id == ecom_products_filters_id &&
        other.seo_attributes == seo_attributes &&
        other.description == description &&
        other.description_en == description_en &&
        other.description_ar == description_ar &&
        other.description_fr == description_fr &&
        other.products == products &&
        other.phone_country_code == phone_country_code &&
        other.phone_original == phone_original &&
        other.image == image &&
        other.thumb == thumb;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        cms_attributes.hashCode ^
        deleted_at.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        version.hashCode ^
        orders.hashCode ^
        ecom_stores_id.hashCode ^
        display_homepage.hashCode ^
        display.hashCode ^
        label.hashCode ^
        ecom_sections_id.hashCode ^
        extension_image.hashCode ^
        alt_image.hashCode ^
        keywords.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        label_fr.hashCode ^
        mode.hashCode ^
        ecom_subcategories_id.hashCode ^
        ecom_products_filters_id.hashCode ^
        seo_attributes.hashCode ^
        description.hashCode ^
        description_en.hashCode ^
        description_ar.hashCode ^
        description_fr.hashCode ^
        products.hashCode ^
        phone_country_code.hashCode ^
        phone_original.hashCode ^
        image.hashCode ^
        thumb.hashCode;
  }
}

class CmsCollectionModel {
  final Cms_attributesCollectionModel cms_attributes;
  CmsCollectionModel({
    required this.cms_attributes,
  });

  CmsCollectionModel copyWith({
    Cms_attributesCollectionModel? cms_attributes,
  }) {
    return CmsCollectionModel(
      cms_attributes: cms_attributes ?? this.cms_attributes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cms_attributes': cms_attributes.toMap(),
    };
  }

  factory CmsCollectionModel.fromMap(Map<String, dynamic> map) {
    return CmsCollectionModel(
      cms_attributes:
          Cms_attributesCollectionModel.fromMap(map['cms_attributes'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory CmsCollectionModel.fromJson(String source) =>
      CmsCollectionModel.fromMap(json.decode(source));

  @override
  String toString() => 'CmsCollectionModel(cms_attributes: $cms_attributes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CmsCollectionModel &&
        other.cms_attributes == cms_attributes;
  }

  @override
  int get hashCode => cms_attributes.hashCode;
}

class Cms_attributesCollectionModel {
  final String attributes_description;
  Cms_attributesCollectionModel({
    this.attributes_description = '',
  });

  Cms_attributesCollectionModel copyWith({
    String? attributes_description,
  }) {
    return Cms_attributesCollectionModel(
      attributes_description:
          attributes_description ?? this.attributes_description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'attributes_description': attributes_description,
    };
  }

  factory Cms_attributesCollectionModel.fromMap(Map<String, dynamic> map) {
    return Cms_attributesCollectionModel(
      attributes_description: map['attributes_description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributesCollectionModel.fromJson(String source) =>
      Cms_attributesCollectionModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributes(attributes_description: $attributes_description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cms_attributesCollectionModel &&
        other.attributes_description == attributes_description;
  }

  @override
  int get hashCode => attributes_description.hashCode;
}
