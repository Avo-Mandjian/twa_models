import 'dart:convert';

import 'package:flutter/foundation.dart';

class InTheBox {
  final ItemInTheBox item;
  final String quantity;
  InTheBox({
    required this.item,
    this.quantity = '',
  });

  InTheBox copyWith({
    ItemInTheBox? item,
    String? quantity,
  }) {
    return InTheBox(
      item: item ?? this.item,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'item': item.toMap(),
      'quantity': quantity,
    };
  }

  factory InTheBox.fromMap(Map<String, dynamic> map) {
    return InTheBox(
      item: ItemInTheBox.fromMap(map['item']),
      quantity: map['quantity'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory InTheBox.fromJson(String source) =>
      InTheBox.fromMap(json.decode(source));

  @override
  String toString() => 'InTheBox(item: $item, quantity: $quantity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InTheBox &&
        other.item == item &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => item.hashCode ^ quantity.hashCode;
}

class ItemInTheBox {
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
  final int weight;
  final int stock;
  final List<String> ecom_products_filters_id;
  final int in_stock;
  final String ingredients;
  final String sku;
  final int ecom_stores_id;
  final String seo_attributes;
  final int orders;
  final Image image;
  ItemInTheBox({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.extension_image = '',
    this.alt_image = '',
    this.label = '',
    this.description = '',
    this.weight = 0,
    this.stock = 0,
    this.ecom_products_filters_id = const [],
    this.in_stock = 0,
    this.ingredients = '',
    this.sku = '',
    this.ecom_stores_id = 0,
    this.seo_attributes = '',
    this.orders = 0,
    required this.image,
  });

  ItemInTheBox copyWith({
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
    int? weight,
    int? stock,
    List<String>? ecom_products_filters_id,
    int? in_stock,
    String? ingredients,
    String? sku,
    int? ecom_stores_id,
    String? seo_attributes,
    int? orders,
    Image? image,
  }) {
    return ItemInTheBox(
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
      weight: weight ?? this.weight,
      stock: stock ?? this.stock,
      ecom_products_filters_id:
          ecom_products_filters_id ?? this.ecom_products_filters_id,
      in_stock: in_stock ?? this.in_stock,
      ingredients: ingredients ?? this.ingredients,
      sku: sku ?? this.sku,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      orders: orders ?? this.orders,
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
      'weight': weight,
      'stock': stock,
      'ecom_products_filters_id': ecom_products_filters_id,
      'in_stock': in_stock,
      'ingredients': ingredients,
      'sku': sku,
      'ecom_stores_id': ecom_stores_id,
      'seo_attributes': seo_attributes,
      'orders': orders,
      'image': image.toMap(),
    };
  }

  factory ItemInTheBox.fromMap(Map<String, dynamic> map) {
    return ItemInTheBox(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      extension_image: map['extension_image'] ?? '',
      alt_image: map['alt_image'] ?? '',
      label: map['label'] ?? '',
      description: map['description'] ?? '',
      weight: map['weight']?.toInt() ?? 0,
      stock: map['stock']?.toInt() ?? 0,
      ecom_products_filters_id:
          List<String>.from(map['ecom_products_filters_id'] ?? const []),
      in_stock: map['in_stock']?.toInt() ?? 0,
      ingredients: map['ingredients'] ?? '',
      sku: map['sku'] ?? '',
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      orders: map['orders']?.toInt() ?? 0,
      image: Image.fromMap(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemInTheBox.fromJson(String source) =>
      ItemInTheBox.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, extension_image: $extension_image, alt_image: $alt_image, label: $label, description: $description, weight: $weight, stock: $stock, ecom_products_filters_id: $ecom_products_filters_id, in_stock: $in_stock, ingredients: $ingredients, sku: $sku, ecom_stores_id: $ecom_stores_id, seo_attributes: $seo_attributes, orders: $orders, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemInTheBox &&
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
        other.weight == weight &&
        other.stock == stock &&
        listEquals(other.ecom_products_filters_id, ecom_products_filters_id) &&
        other.in_stock == in_stock &&
        other.ingredients == ingredients &&
        other.sku == sku &&
        other.ecom_stores_id == ecom_stores_id &&
        other.seo_attributes == seo_attributes &&
        other.orders == orders &&
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
        weight.hashCode ^
        stock.hashCode ^
        ecom_products_filters_id.hashCode ^
        in_stock.hashCode ^
        ingredients.hashCode ^
        sku.hashCode ^
        ecom_stores_id.hashCode ^
        seo_attributes.hashCode ^
        orders.hashCode ^
        image.hashCode;
  }
}

class Image {
  final String image;
  final String thumb;
  final String alt;
  Image({
    this.image = '',
    this.thumb = '',
    this.alt = '',
  });

  Image copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return Image(
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

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      image: map['image'] ?? '',
      thumb: map['thumb'] ?? '',
      alt: map['alt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) => Image.fromMap(json.decode(source));

  @override
  String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Image &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}
