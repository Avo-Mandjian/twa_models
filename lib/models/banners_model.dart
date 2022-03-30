import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:twa_models/models/slideshow_model.dart';

class BannersModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final int display_homepage;
  final int display;
  final String display_type;
  final String display_theme;
  final String position;
  final String label;
  final String text;
  final String btn_label;
  final String btn_link;
  final ImageBannersModel image;
  final String extension_image;
  final String alt_image;
  final String size;
  final String background_position;
  final String custom_background;
  final int fallback_for_products;
  final String label_en;
  final String label_ar;
  final String btn_label_en;
  final String btn_label_ar;
  final String btn_link_en;
  final String btn_link_ar;
  final String text_en;
  final String text_ar;
  final String label_fr;
  final String text_fr;
  final String btn_label_fr;
  final String btn_link_fr;
  final List<String> ecom_stores_id;
  final ImageMobile image_mobile;
  final String extension_image_mobile;
  final String alt_image_mobile;
  final String seo_attributes;
  BannersModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.display_homepage = 0,
    this.display = 0,
    this.display_type = '',
    this.display_theme = '',
    this.position = '',
    this.label = '',
    this.text = '',
    this.btn_label = '',
    this.btn_link = '',
    required this.image,
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.size = '',
    this.background_position = '',
    this.custom_background = '',
    this.fallback_for_products = 0,
    this.label_en = '',
    this.label_ar = '',
    this.btn_label_en = '',
    this.btn_label_ar = '',
    this.btn_link_en = '',
    this.btn_link_ar = '',
    this.text_en = '',
    this.text_ar = '',
    this.label_fr = '',
    this.text_fr = '',
    this.btn_label_fr = '',
    this.btn_link_fr = '',
    this.ecom_stores_id = const [],
    required this.image_mobile,
    this.extension_image_mobile = '',
    this.alt_image_mobile = '',
    this.seo_attributes = '',
  });

  BannersModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    int? display_homepage,
    int? display,
    String? display_type,
    String? display_theme,
    String? position,
    String? label,
    String? text,
    String? btn_label,
    String? btn_link,
    ImageBannersModel? image,
    String? extension_image,
    String? alt_image,
    String? size,
    String? background_position,
    String? custom_background,
    int? fallback_for_products,
    String? label_en,
    String? label_ar,
    String? btn_label_en,
    String? btn_label_ar,
    String? btn_link_en,
    String? btn_link_ar,
    String? text_en,
    String? text_ar,
    String? label_fr,
    String? text_fr,
    String? btn_label_fr,
    String? btn_link_fr,
    List<String>? ecom_stores_id,
    ImageMobile? image_mobile,
    String? extension_image_mobile,
    String? alt_image_mobile,
    String? seo_attributes,
  }) {
    return BannersModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      display_homepage: display_homepage ?? this.display_homepage,
      display: display ?? this.display,
      display_type: display_type ?? this.display_type,
      display_theme: display_theme ?? this.display_theme,
      position: position ?? this.position,
      label: label ?? this.label,
      text: text ?? this.text,
      btn_label: btn_label ?? this.btn_label,
      btn_link: btn_link ?? this.btn_link,
      image: image ?? this.image,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      size: size ?? this.size,
      background_position: background_position ?? this.background_position,
      custom_background: custom_background ?? this.custom_background,
      fallback_for_products:
          fallback_for_products ?? this.fallback_for_products,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      btn_label_en: btn_label_en ?? this.btn_label_en,
      btn_label_ar: btn_label_ar ?? this.btn_label_ar,
      btn_link_en: btn_link_en ?? this.btn_link_en,
      btn_link_ar: btn_link_ar ?? this.btn_link_ar,
      text_en: text_en ?? this.text_en,
      text_ar: text_ar ?? this.text_ar,
      label_fr: label_fr ?? this.label_fr,
      text_fr: text_fr ?? this.text_fr,
      btn_label_fr: btn_label_fr ?? this.btn_label_fr,
      btn_link_fr: btn_link_fr ?? this.btn_link_fr,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      image_mobile: image_mobile ?? this.image_mobile,
      extension_image_mobile:
          extension_image_mobile ?? this.extension_image_mobile,
      alt_image_mobile: alt_image_mobile ?? this.alt_image_mobile,
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
      'display_homepage': display_homepage,
      'display': display,
      'display_type': display_type,
      'display_theme': display_theme,
      'position': position,
      'label': label,
      'text': text,
      'btn_label': btn_label,
      'btn_link': btn_link,
      'image': image.toMap(),
      'extension_image': extension_image,
      'alt_image': alt_image,
      'size': size,
      'background_position': background_position,
      'custom_background': custom_background,
      'fallback_for_products': fallback_for_products,
      'label_en': label_en,
      'label_ar': label_ar,
      'btn_label_en': btn_label_en,
      'btn_label_ar': btn_label_ar,
      'btn_link_en': btn_link_en,
      'btn_link_ar': btn_link_ar,
      'text_en': text_en,
      'text_ar': text_ar,
      'label_fr': label_fr,
      'text_fr': text_fr,
      'btn_label_fr': btn_label_fr,
      'btn_link_fr': btn_link_fr,
      'ecom_stores_id': ecom_stores_id,
      'image_mobile': image_mobile.toMap(),
      'extension_image_mobile': extension_image_mobile,
      'alt_image_mobile': alt_image_mobile,
      'seo_attributes': seo_attributes,
    };
  }

  factory BannersModel.fromMap(Map<String, dynamic> map) {
    return BannersModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      display_homepage: map['display_homepage']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      display_type: map['display_type'] ?? '',
      display_theme: map['display_theme'] ?? '',
      position: map['position'] ?? '',
      label: map['label'] ?? '',
      text: map['text'] ?? '',
      btn_label: map['btn_label'] ?? '',
      btn_link: map['btn_link'] ?? '',
      image: ImageBannersModel.fromMap(map['image']),
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      size: map['size'] ?? '',
      background_position: map['background_position'] ?? '',
      custom_background: map['custom_background'] ?? '',
      fallback_for_products: map['fallback_for_products']?.toInt() ?? 0,
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      btn_label_en: map['btn_label_en'] ?? '',
      btn_label_ar: map['btn_label_ar'] ?? '',
      btn_link_en: map['btn_link_en'] ?? '',
      btn_link_ar: map['btn_link_ar'] ?? '',
      text_en: map['text_en'] ?? '',
      text_ar: map['text_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      text_fr: map['text_fr'] ?? '',
      btn_label_fr: map['btn_label_fr'] ?? '',
      btn_link_fr: map['btn_link_fr'] ?? '',
      ecom_stores_id: List<String>.from(map['ecom_stores_id'] ?? const []),
      image_mobile: ImageMobile.fromMap(
        map['mobile_app_image'] ??
            Mobile_image(
              alt: 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
              thumb:
                  'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
              image:
                  'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
            ).toMap(),
      ),
      extension_image_mobile: map['extension_image_mobile'] ?? '',
      alt_image_mobile: map['alt_image_mobile'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BannersModel.fromJson(String source) =>
      BannersModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BannersModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, display_homepage: $display_homepage, display: $display, display_type: $display_type, display_theme: $display_theme, position: $position, label: $label, text: $text, btn_label: $btn_label, btn_link: $btn_link, image: $image, extension_image: $extension_image, alt_image: $alt_image, size: $size, background_position: $background_position, custom_background: $custom_background, fallback_for_products: $fallback_for_products, label_en: $label_en, label_ar: $label_ar, btn_label_en: $btn_label_en, btn_label_ar: $btn_label_ar, btn_link_en: $btn_link_en, btn_link_ar: $btn_link_ar, text_en: $text_en, text_ar: $text_ar, label_fr: $label_fr, text_fr: $text_fr, btn_label_fr: $btn_label_fr, btn_link_fr: $btn_link_fr, ecom_stores_id: $ecom_stores_id, image_mobile: $image_mobile, extension_image_mobile: $extension_image_mobile, alt_image_mobile: $alt_image_mobile, seo_attributes: $seo_attributes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BannersModel &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.display_homepage == display_homepage &&
        other.display == display &&
        other.display_type == display_type &&
        other.display_theme == display_theme &&
        other.position == position &&
        other.label == label &&
        other.text == text &&
        other.btn_label == btn_label &&
        other.btn_link == btn_link &&
        other.image == image &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        other.size == size &&
        other.background_position == background_position &&
        other.custom_background == custom_background &&
        other.fallback_for_products == fallback_for_products &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.btn_label_en == btn_label_en &&
        other.btn_label_ar == btn_label_ar &&
        other.btn_link_en == btn_link_en &&
        other.btn_link_ar == btn_link_ar &&
        other.text_en == text_en &&
        other.text_ar == text_ar &&
        other.label_fr == label_fr &&
        other.text_fr == text_fr &&
        other.btn_label_fr == btn_label_fr &&
        other.btn_link_fr == btn_link_fr &&
        listEquals(other.ecom_stores_id, ecom_stores_id) &&
        other.image_mobile == image_mobile &&
        other.extension_image_mobile == extension_image_mobile &&
        other.alt_image_mobile == alt_image_mobile &&
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
        display_homepage.hashCode ^
        display.hashCode ^
        display_type.hashCode ^
        display_theme.hashCode ^
        position.hashCode ^
        label.hashCode ^
        text.hashCode ^
        btn_label.hashCode ^
        btn_link.hashCode ^
        image.hashCode ^
        extension_image.hashCode ^
        alt_image.hashCode ^
        size.hashCode ^
        background_position.hashCode ^
        custom_background.hashCode ^
        fallback_for_products.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        btn_label_en.hashCode ^
        btn_label_ar.hashCode ^
        btn_link_en.hashCode ^
        btn_link_ar.hashCode ^
        text_en.hashCode ^
        text_ar.hashCode ^
        label_fr.hashCode ^
        text_fr.hashCode ^
        btn_label_fr.hashCode ^
        btn_link_fr.hashCode ^
        ecom_stores_id.hashCode ^
        image_mobile.hashCode ^
        extension_image_mobile.hashCode ^
        alt_image_mobile.hashCode ^
        seo_attributes.hashCode;
  }
}

class ImageBannersModel {
  final String image;
  final String thumb;
  final String alt;
  ImageBannersModel({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  ImageBannersModel copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return ImageBannersModel(
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

  factory ImageBannersModel.fromMap(Map<String, dynamic> map) {
    return ImageBannersModel(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageBannersModel.fromJson(String source) =>
      ImageBannersModel.fromMap(json.decode(source));

  @override
  String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageBannersModel &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}

class ImageMobile {
  final String image;
  final String thumb;
  final String alt;
  ImageMobile({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  ImageMobile copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return ImageMobile(
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

  factory ImageMobile.fromMap(Map<String, dynamic> map) {
    // if (isTwalab) {
    //   return Image_mobile(
    //     image: map['image'] ??
    //         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //     thumb: map['thumb'] ??
    //         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //     alt: map['alt'] ??
    //         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //   );
    // } else {
    //   return Image_mobile(
    //     image: map['image'] ??
    //       'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //     thumb: map['thumb'] ??
    //       'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //     alt: map['alt']??
    //       'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //   );
    // }
    return ImageMobile(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageMobile.fromJson(String source) =>
      ImageMobile.fromMap(json.decode(source));

  @override
  String toString() => 'Image_mobile(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageMobile &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}
