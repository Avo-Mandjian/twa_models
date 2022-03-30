import 'dart:convert';

import 'package:flutter/foundation.dart';

class MenuBuilder {
  final int id;
  final List<MenuBuilder> children;
  final DataMenuBuilder data;
  MenuBuilder({
    this.id = 0,
    this.children = const [],
    required this.data,
  });

  MenuBuilder copyWith({
    int? id,
    List<MenuBuilder>? children,
    DataMenuBuilder? data,
  }) {
    return MenuBuilder(
      id: id ?? this.id,
      children: children ?? this.children,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'children': children.map((x) => x.toMap()).toList(),
      'data': data.toMap(),
    };
  }

  factory MenuBuilder.fromMap(Map<String, dynamic> map) {
    return MenuBuilder(
      id: map['id']?.toInt() ?? 0,
      children: List<MenuBuilder>.from(
        map['children']?.map((x) => MenuBuilder.fromMap(x)) ?? const [],
      ),
      data: DataMenuBuilder.fromMap(map['data'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuBuilder.fromJson(String source) =>
      MenuBuilder.fromMap(json.decode(source));

  @override
  String toString() => 'MenuBuilder(id: $id, children: $children, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MenuBuilder &&
        other.id == id &&
        listEquals(other.children, children) &&
        other.data == data;
  }

  @override
  int get hashCode => id.hashCode ^ children.hashCode ^ data.hashCode;
}

class DataMenuBuilder {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final int n00_cms_utilities_frontend_menus_id;
  final String label;
  final String link;
  final String target;
  final String extension_image;
  final String alt_image;
  final int link_to_ecom;
  final List<String> keywords;
  final Cms_attributes cms_attributes;
  final List<String> ecom_subcategories_id;
  final String mode;
  final List<String>? ecom_products_filters_id;
  final String link_en;
  final String label_en;
  final String extension_;
  final String alt_;
  final String label_ar;
  final String link_ar;
  final String seo_attributes;
  final String image;
  DataMenuBuilder({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.n00_cms_utilities_frontend_menus_id = 0,
    this.label = '',
    this.link = '',
    this.target = '',
    this.image = '',
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.link_to_ecom = 0,
    this.keywords = const [],
    required this.cms_attributes,
    this.ecom_subcategories_id = const [],
    this.mode = '',
    this.ecom_products_filters_id = const [],
    this.link_en = '',
    this.label_en = '',
    this.extension_ = '',
    this.alt_ = '',
    this.label_ar = '',
    this.link_ar = '',
    this.seo_attributes = '',
  });

  DataMenuBuilder copyWith({
    int? id,
    String? image,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    int? n00_cms_utilities_frontend_menus_id,
    String? label,
    String? link,
    String? target,
    String? extension_image,
    String? alt_image,
    int? link_to_ecom,
    List<String>? keywords,
    Cms_attributes? cms_attributes,
    List<String>? ecom_subcategories_id,
    String? mode,
    List<String>? ecom_products_filters_id,
    String? link_en,
    String? label_en,
    String? extension_,
    String? alt_,
    String? label_ar,
    String? link_ar,
    String? seo_attributes,
  }) {
    return DataMenuBuilder(
      id: id ?? this.id,
      image: image ?? this.image,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      n00_cms_utilities_frontend_menus_id:
          n00_cms_utilities_frontend_menus_id ??
              this.n00_cms_utilities_frontend_menus_id,
      label: label ?? this.label,
      link: link ?? this.link,
      target: target ?? this.target,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      link_to_ecom: link_to_ecom ?? this.link_to_ecom,
      keywords: keywords ?? this.keywords,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      mode: mode ?? this.mode,
      ecom_products_filters_id:
          ecom_products_filters_id ?? this.ecom_products_filters_id,
      link_en: link_en ?? this.link_en,
      label_en: label_en ?? this.label_en,
      extension_: extension_ ?? this.extension_,
      alt_: alt_ ?? this.alt_,
      label_ar: label_ar ?? this.label_ar,
      link_ar: link_ar ?? this.link_ar,
      seo_attributes: seo_attributes ?? this.seo_attributes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'orders': orders,
      '00_cms_utilities_frontend_menus_id': n00_cms_utilities_frontend_menus_id,
      'label': label,
      'link': link,
      'target': target,
      'extension_image': extension_image,
      'alt_image': alt_image,
      'link_to_ecom': link_to_ecom,
      'keywords': keywords,
      'cms_attributes': cms_attributes.toMap(),
      'ecom_subcategories_id': ecom_subcategories_id,
      'mode': mode,
      'ecom_products_filters_id': ecom_products_filters_id,
      'link_en': link_en,
      'label_en': label_en,
      'extension_': extension_,
      'alt_': alt_,
      'label_ar': label_ar,
      'link_ar': link_ar,
      'seo_attributes': seo_attributes,
    };
  }

  factory DataMenuBuilder.fromMap(Map<String, dynamic> map) {
    return DataMenuBuilder(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      image: map['image'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      n00_cms_utilities_frontend_menus_id:
          map['00_cms_utilities_frontend_menus_id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      link: map['link'] ?? '',
      target: map['target'] ?? '',
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      link_to_ecom: map['link_to_ecom']?.toInt() ?? 0,
      keywords: List<String>.from(map['keywords'] ?? const []),
      cms_attributes: Cms_attributes.fromMap(map['cms_attributes'] ?? {}),
      ecom_subcategories_id:
          List<String>.from(map['ecom_subcategories_id'] ?? const []),
      mode: map['mode'] ?? '',
      ecom_products_filters_id:
          List<String>.from(map['ecom_products_filters_id'] ?? const []),
      link_en: map['link_en'] ?? '',
      label_en: map['label_en'] ?? '',
      extension_: map['extension_'] ?? '',
      alt_: map['alt_'] ?? '',
      label_ar: map['label_ar'] ?? '',
      link_ar: map['link_ar'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DataMenuBuilder.fromJson(String source) =>
      DataMenuBuilder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, n00_cms_utilities_frontend_menus_id: $n00_cms_utilities_frontend_menus_id, label: $label, link: $link, target: $target, extension_image: $extension_image, alt_image: $alt_image, link_to_ecom: $link_to_ecom, keywords: $keywords, cms_attributes: $cms_attributes, ecom_subcategories_id: $ecom_subcategories_id, mode: $mode, ecom_products_filters_id: $ecom_products_filters_id, link_en: $link_en, label_en: $label_en, extension_: $extension_, alt_: $alt_, label_ar: $label_ar, link_ar: $link_ar, seo_attributes: $seo_attributes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataMenuBuilder &&
        other.id == id &&
        other.created_at == created_at &&
        other.image == image &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.n00_cms_utilities_frontend_menus_id ==
            n00_cms_utilities_frontend_menus_id &&
        other.label == label &&
        other.link == link &&
        other.target == target &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        other.link_to_ecom == link_to_ecom &&
        listEquals(other.keywords, keywords) &&
        other.cms_attributes == cms_attributes &&
        other.ecom_subcategories_id == ecom_subcategories_id &&
        other.mode == mode &&
        other.ecom_products_filters_id == ecom_products_filters_id &&
        other.link_en == link_en &&
        other.label_en == label_en &&
        other.extension_ == extension_ &&
        other.alt_ == alt_ &&
        other.label_ar == label_ar &&
        other.link_ar == link_ar &&
        other.seo_attributes == seo_attributes;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        created_at.hashCode ^
        image.hashCode ^
        updated_at.hashCode ^
        deleted_at.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        version.hashCode ^
        orders.hashCode ^
        n00_cms_utilities_frontend_menus_id.hashCode ^
        label.hashCode ^
        link.hashCode ^
        target.hashCode ^
        extension_image.hashCode ^
        alt_image.hashCode ^
        link_to_ecom.hashCode ^
        keywords.hashCode ^
        cms_attributes.hashCode ^
        ecom_subcategories_id.hashCode ^
        mode.hashCode ^
        ecom_products_filters_id.hashCode ^
        link_en.hashCode ^
        label_en.hashCode ^
        extension_.hashCode ^
        alt_.hashCode ^
        label_ar.hashCode ^
        link_ar.hashCode ^
        seo_attributes.hashCode;
  }
}

class Cms_attributes {
  final String attributes_image;
  Cms_attributes({
    this.attributes_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
  });

  Cms_attributes copyWith({
    String? attributes_image,
  }) {
    return Cms_attributes(
      attributes_image: attributes_image ?? this.attributes_image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'attributes_image': attributes_image,
    };
  }

  factory Cms_attributes.fromMap(Map<String, dynamic> map) {
    return Cms_attributes(
      attributes_image: map['attributes_mobile_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributes.fromJson(String source) =>
      Cms_attributes.fromMap(json.decode(source));

  @override
  String toString() => 'Cms_attributes(attributes_image: $attributes_image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cms_attributes &&
        other.attributes_image == attributes_image;
  }

  @override
  int get hashCode => attributes_image.hashCode;
}
