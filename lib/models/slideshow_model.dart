import 'dart:convert';

import 'package:flutter/foundation.dart';

class SlideShowModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final List<String> ecom_stores_id;
  final String label;
  final String text;
  final String btn_label;
  final String btn_link;
  final Cms_attributes cms_attributes;
  final String theme;
  final String extension_slideshow;
  final String alt_slideshow;
  final String label_en;
  final String label_ar;
  final String text_en;
  final String text_ar;
  final String btn_label_en;
  final String btn_label_ar;
  final String btn_link_en;
  final String btn_link_ar;
  final String label_fr;
  final String text_fr;
  final String btn_label_fr;
  final String btn_link_fr;
  final int overlay;
  final String seo_attributes;
  final String extension_mobile_image;
  final String alt_mobile_image;
  final Slideshow slideshow;
  final Mobile_image mobile_image;
  SlideShowModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.ecom_stores_id = const [],
    this.label = '',
    this.text = '',
    this.btn_label = '',
    this.btn_link = '',
    required this.cms_attributes,
    this.theme = '',
    this.extension_slideshow = '',
    this.alt_slideshow = '',
    this.label_en = '',
    this.label_ar = '',
    this.text_en = '',
    this.text_ar = '',
    this.btn_label_en = '',
    this.btn_label_ar = '',
    this.btn_link_en = '',
    this.btn_link_ar = '',
    this.label_fr = '',
    this.text_fr = '',
    this.btn_label_fr = '',
    this.btn_link_fr = '',
    this.overlay = 0,
    this.seo_attributes = '',
    this.extension_mobile_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_mobile_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    required this.slideshow,
    required this.mobile_image,
  });

  SlideShowModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    List<String>? ecom_stores_id,
    String? label,
    String? text,
    String? btn_label,
    String? btn_link,
    Cms_attributes? cms_attributes,
    String? theme,
    String? extension_slideshow,
    String? alt_slideshow,
    String? label_en,
    String? label_ar,
    String? text_en,
    String? text_ar,
    String? btn_label_en,
    String? btn_label_ar,
    String? btn_link_en,
    String? btn_link_ar,
    String? label_fr,
    String? text_fr,
    String? btn_label_fr,
    String? btn_link_fr,
    int? overlay,
    String? seo_attributes,
    String? extension_mobile_image,
    String? alt_mobile_image,
    Slideshow? slideshow,
    Mobile_image? mobile_image,
  }) {
    return SlideShowModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      label: label ?? this.label,
      text: text ?? this.text,
      btn_label: btn_label ?? this.btn_label,
      btn_link: btn_link ?? this.btn_link,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      theme: theme ?? this.theme,
      extension_slideshow: extension_slideshow ?? this.extension_slideshow,
      alt_slideshow: alt_slideshow ?? this.alt_slideshow,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      text_en: text_en ?? this.text_en,
      text_ar: text_ar ?? this.text_ar,
      btn_label_en: btn_label_en ?? this.btn_label_en,
      btn_label_ar: btn_label_ar ?? this.btn_label_ar,
      btn_link_en: btn_link_en ?? this.btn_link_en,
      btn_link_ar: btn_link_ar ?? this.btn_link_ar,
      label_fr: label_fr ?? this.label_fr,
      text_fr: text_fr ?? this.text_fr,
      btn_label_fr: btn_label_fr ?? this.btn_label_fr,
      btn_link_fr: btn_link_fr ?? this.btn_link_fr,
      overlay: overlay ?? this.overlay,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      extension_mobile_image:
          extension_mobile_image ?? this.extension_mobile_image,
      alt_mobile_image: alt_mobile_image ?? this.alt_mobile_image,
      slideshow: slideshow ?? this.slideshow,
      mobile_image: mobile_image ?? this.mobile_image,
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
      'ecom_stores_id': ecom_stores_id,
      'label': label,
      'text': text,
      'btn_label': btn_label,
      'btn_link': btn_link,
      'cms_attributes': cms_attributes.toMap(),
      'theme': theme,
      'extension_slideshow': extension_slideshow,
      'alt_slideshow': alt_slideshow,
      'label_en': label_en,
      'label_ar': label_ar,
      'text_en': text_en,
      'text_ar': text_ar,
      'btn_label_en': btn_label_en,
      'btn_label_ar': btn_label_ar,
      'btn_link_en': btn_link_en,
      'btn_link_ar': btn_link_ar,
      'label_fr': label_fr,
      'text_fr': text_fr,
      'btn_label_fr': btn_label_fr,
      'btn_link_fr': btn_link_fr,
      'overlay': overlay,
      'seo_attributes': seo_attributes,
      'extension_mobile_image': extension_mobile_image,
      'alt_mobile_image': alt_mobile_image,
      'slideshow': slideshow.toMap(),
      'mobile_image': mobile_image.toMap(),
    };
  }

  factory SlideShowModel.fromMap(Map<String, dynamic> map) {
    return SlideShowModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      ecom_stores_id: List<String>.from(map['ecom_stores_id'] ?? []),
      label: map['label'] ?? '',
      text: map['text'] ?? '',
      btn_label: map['btn_label'] ?? '',
      btn_link: map['btn_link'] ?? '',
      cms_attributes: Cms_attributes.fromMap(map['cms_attributes'] ?? {}),
      theme: map['theme'] ?? '',
      extension_slideshow: map['extension_slideshow'] ?? '',
      alt_slideshow: map['alt_slideshow'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      text_en: map['text_en'] ?? '',
      text_ar: map['text_ar'] ?? '',
      btn_label_en: map['btn_label_en'] ?? '',
      btn_label_ar: map['btn_label_ar'] ?? '',
      btn_link_en: map['btn_link_en'] ?? '',
      btn_link_ar: map['btn_link_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      text_fr: map['text_fr'] ?? '',
      btn_label_fr: map['btn_label_fr'] ?? '',
      btn_link_fr: map['btn_link_fr'] ?? '',
      overlay: map['overlay']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      extension_mobile_image: map['extension_mobile_image'] ?? '',
      alt_mobile_image: map['alt_mobile_image'] ?? '',
      slideshow: Slideshow.fromMap(map['slideshow']),
      mobile_image: Mobile_image.fromMap(map['mobile_image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SlideShowModel.fromJson(String source) =>
      SlideShowModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SlideShowModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, label: $label, text: $text, btn_label: $btn_label, btn_link: $btn_link, cms_attributes: $cms_attributes, theme: $theme, extension_slideshow: $extension_slideshow, alt_slideshow: $alt_slideshow, label_en: $label_en, label_ar: $label_ar, text_en: $text_en, text_ar: $text_ar, btn_label_en: $btn_label_en, btn_label_ar: $btn_label_ar, btn_link_en: $btn_link_en, btn_link_ar: $btn_link_ar, label_fr: $label_fr, text_fr: $text_fr, btn_label_fr: $btn_label_fr, btn_link_fr: $btn_link_fr, overlay: $overlay, seo_attributes: $seo_attributes, extension_mobile_image: $extension_mobile_image, alt_mobile_image: $alt_mobile_image, slideshow: $slideshow, mobile_image: $mobile_image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SlideShowModel &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        listEquals(other.ecom_stores_id, ecom_stores_id) &&
        other.label == label &&
        other.text == text &&
        other.btn_label == btn_label &&
        other.btn_link == btn_link &&
        other.cms_attributes == cms_attributes &&
        other.theme == theme &&
        other.extension_slideshow == extension_slideshow &&
        other.alt_slideshow == alt_slideshow &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.text_en == text_en &&
        other.text_ar == text_ar &&
        other.btn_label_en == btn_label_en &&
        other.btn_label_ar == btn_label_ar &&
        other.btn_link_en == btn_link_en &&
        other.btn_link_ar == btn_link_ar &&
        other.label_fr == label_fr &&
        other.text_fr == text_fr &&
        other.btn_label_fr == btn_label_fr &&
        other.btn_link_fr == btn_link_fr &&
        other.overlay == overlay &&
        other.seo_attributes == seo_attributes &&
        other.extension_mobile_image == extension_mobile_image &&
        other.alt_mobile_image == alt_mobile_image &&
        other.slideshow == slideshow &&
        other.mobile_image == mobile_image;
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
        ecom_stores_id.hashCode ^
        label.hashCode ^
        text.hashCode ^
        btn_label.hashCode ^
        btn_link.hashCode ^
        cms_attributes.hashCode ^
        theme.hashCode ^
        extension_slideshow.hashCode ^
        alt_slideshow.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        text_en.hashCode ^
        text_ar.hashCode ^
        btn_label_en.hashCode ^
        btn_label_ar.hashCode ^
        btn_link_en.hashCode ^
        btn_link_ar.hashCode ^
        label_fr.hashCode ^
        text_fr.hashCode ^
        btn_label_fr.hashCode ^
        btn_link_fr.hashCode ^
        overlay.hashCode ^
        seo_attributes.hashCode ^
        extension_mobile_image.hashCode ^
        alt_mobile_image.hashCode ^
        slideshow.hashCode ^
        mobile_image.hashCode;
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cms_attributes &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.version == version;
  }

  @override
  int get hashCode =>
      created_at.hashCode ^ updated_at.hashCode ^ version.hashCode;
}

class Slideshow {
  final String image;
  final String thumb;
  final String alt;
  Slideshow({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  Slideshow copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return Slideshow(
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

  factory Slideshow.fromMap(Map<String, dynamic> map) {
    return Slideshow(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory Slideshow.fromJson(String source) =>
      Slideshow.fromMap(json.decode(source));

  @override
  String toString() => 'Slideshow(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Slideshow &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}

class Mobile_image {
  final String image;
  final String thumb;
  final String alt;
  Mobile_image({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  Mobile_image copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return Mobile_image(
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

  factory Mobile_image.fromMap(Map<String, dynamic> map) {
    // if (isTwalab) {
    //   return Mobile_image(
    //     image: map['image']?.replaceAll(
    //             'https://cms.patchi.com', 'https://cms.patchi.twalab.com/') ??
    //         '',
    //     thumb: map['thumb']?.replaceAll(
    //             'https://cms.patchi.com', 'https://cms.patchi.twalab.com/') ??
    //         '',
    //     alt: map['alt']?.replaceAll(
    //             'https://cms.patchi.com', 'https://cms.patchi.twalab.com/') ??
    //         '',
    //   );
    // } else {
    //   return Mobile_image(
    //     image: map['image'] ??
    //         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //     thumb: map['thumb'] ??
    //         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //     alt: map['alt'] ??
    //         'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    //   );
    // }
    return Mobile_image(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory Mobile_image.fromJson(String source) =>
      Mobile_image.fromMap(json.decode(source));

  @override
  String toString() => 'Mobile_image(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Mobile_image &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}
