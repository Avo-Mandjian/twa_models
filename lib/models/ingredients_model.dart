import 'dart:convert';

import 'package:flutter/foundation.dart';

class Ingredients {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String extension_image;
  final String alt_image;
  final String label;
  final String description;
  final String cms_attributes;
  final int weight;
  final double stock;
  final List<String> ecom_products_filters_id;
  final int in_stock;
  final String ingredients;
  final String sku;
  final String label_en;
  final String label_ar;
  final String description_en;
  final String description_ar;
  final String ingredients_en;
  final String ingredients_ar;
  final String label_fr;
  final String description_fr;
  final String ingredients_fr;
  final int ecom_stores_id;
  final String seo_attributes;
  final ImageIngredient image;
  Ingredients({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.label = '',
    this.description = '',
    this.cms_attributes = '',
    this.weight = 0,
    this.stock = 0.0,
    this.ecom_products_filters_id = const [],
    this.in_stock = 0,
    this.ingredients = '',
    this.sku = '',
    this.label_en = '',
    this.label_ar = '',
    this.description_en = '',
    this.description_ar = '',
    this.ingredients_en = '',
    this.ingredients_ar = '',
    this.label_fr = '',
    this.description_fr = '',
    this.ingredients_fr = '',
    this.ecom_stores_id = 0,
    this.seo_attributes = '',
    required this.image,
  });

  Ingredients copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? extension_image,
    String? alt_image,
    String? label,
    String? description,
    String? cms_attributes,
    int? weight,
    double? stock,
    List<String>? ecom_products_filters_id,
    int? in_stock,
    String? ingredients,
    String? sku,
    String? label_en,
    String? label_ar,
    String? description_en,
    String? description_ar,
    String? ingredients_en,
    String? ingredients_ar,
    String? label_fr,
    String? description_fr,
    String? ingredients_fr,
    int? ecom_stores_id,
    String? seo_attributes,
    ImageIngredient? image,
  }) {
    return Ingredients(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      label: label ?? this.label,
      description: description ?? this.description,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      weight: weight ?? this.weight,
      stock: stock ?? this.stock,
      ecom_products_filters_id:
          ecom_products_filters_id ?? this.ecom_products_filters_id,
      in_stock: in_stock ?? this.in_stock,
      ingredients: ingredients ?? this.ingredients,
      sku: sku ?? this.sku,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      description_en: description_en ?? this.description_en,
      description_ar: description_ar ?? this.description_ar,
      ingredients_en: ingredients_en ?? this.ingredients_en,
      ingredients_ar: ingredients_ar ?? this.ingredients_ar,
      label_fr: label_fr ?? this.label_fr,
      description_fr: description_fr ?? this.description_fr,
      ingredients_fr: ingredients_fr ?? this.ingredients_fr,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      seo_attributes: seo_attributes ?? this.seo_attributes,
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
      'extension_image': extension_image,
      'alt_image': alt_image,
      'label': label,
      'description': description,
      'cms_attributes': cms_attributes,
      'weight': weight,
      'stock': stock,
      'ecom_products_filters_id': ecom_products_filters_id,
      'in_stock': in_stock,
      'ingredients': ingredients,
      'sku': sku,
      'label_en': label_en,
      'label_ar': label_ar,
      'description_en': description_en,
      'description_ar': description_ar,
      'ingredients_en': ingredients_en,
      'ingredients_ar': ingredients_ar,
      'label_fr': label_fr,
      'description_fr': description_fr,
      'ingredients_fr': ingredients_fr,
      'ecom_stores_id': ecom_stores_id,
      'seo_attributes': seo_attributes,
      'image': image.toMap(),
    };
  }

  factory Ingredients.fromMap(Map<String, dynamic> map) {
    return Ingredients(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      label: map['label'] ?? '',
      description: map['description'] ?? '',
      cms_attributes: jsonEncode(map['cms_attributes'] ?? ''),
      weight: map['weight']?.toInt() ?? 0,
      stock: map['stock']?.toDouble() ?? 0.0,
      ecom_products_filters_id:
          List<String>.from(map['ecom_products_filters_id'] ?? const []),
      in_stock: map['in_stock']?.toInt() ?? 0,
      ingredients: map['ingredients'] ?? '',
      sku: map['sku'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      description_en: map['description_en'] ?? '',
      description_ar: map['description_ar'] ?? '',
      ingredients_en: map['ingredients_en'] ?? '',
      ingredients_ar: map['ingredients_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      description_fr: map['description_fr'] ?? '',
      ingredients_fr: map['ingredients_fr'] ?? '',
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      image: ImageIngredient.fromMap(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Ingredients.fromJson(String source) =>
      Ingredients.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ingredients(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, extension_image: $extension_image, alt_image: $alt_image, label: $label, description: $description, cms_attributes: $cms_attributes, weight: $weight, stock: $stock, ecom_products_filters_id: $ecom_products_filters_id, in_stock: $in_stock, ingredients: $ingredients, sku: $sku, label_en: $label_en, label_ar: $label_ar, description_en: $description_en, description_ar: $description_ar, ingredients_en: $ingredients_en, ingredients_ar: $ingredients_ar, label_fr: $label_fr, description_fr: $description_fr, ingredients_fr: $ingredients_fr, ecom_stores_id: $ecom_stores_id, seo_attributes: $seo_attributes, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Ingredients &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        other.label == label &&
        other.description == description &&
        other.cms_attributes == cms_attributes &&
        other.weight == weight &&
        other.stock == stock &&
        listEquals(other.ecom_products_filters_id, ecom_products_filters_id) &&
        other.in_stock == in_stock &&
        other.ingredients == ingredients &&
        other.sku == sku &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.description_en == description_en &&
        other.description_ar == description_ar &&
        other.ingredients_en == ingredients_en &&
        other.ingredients_ar == ingredients_ar &&
        other.label_fr == label_fr &&
        other.description_fr == description_fr &&
        other.ingredients_fr == ingredients_fr &&
        other.ecom_stores_id == ecom_stores_id &&
        other.seo_attributes == seo_attributes &&
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
        extension_image.hashCode ^
        alt_image.hashCode ^
        label.hashCode ^
        description.hashCode ^
        cms_attributes.hashCode ^
        weight.hashCode ^
        stock.hashCode ^
        ecom_products_filters_id.hashCode ^
        in_stock.hashCode ^
        ingredients.hashCode ^
        sku.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        description_en.hashCode ^
        description_ar.hashCode ^
        ingredients_en.hashCode ^
        ingredients_ar.hashCode ^
        label_fr.hashCode ^
        description_fr.hashCode ^
        ingredients_fr.hashCode ^
        ecom_stores_id.hashCode ^
        seo_attributes.hashCode ^
        image.hashCode;
  }
}

class ImageIngredient {
  final String image;
  final String thumb;
  final String alt;
  ImageIngredient({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  ImageIngredient copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return ImageIngredient(
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

  factory ImageIngredient.fromMap(Map<String, dynamic> map) {
    return ImageIngredient(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageIngredient.fromJson(String source) =>
      ImageIngredient.fromMap(json.decode(source));

  @override
  String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageIngredient &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}
