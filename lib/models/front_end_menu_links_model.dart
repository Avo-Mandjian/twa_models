import 'dart:convert';

class FrontEndMenusLinksModel {
  final int id;
  final int locked;
  final int cancelled;
  final int n00_cms_utilities_frontend_menus_id;
  final String label;
  final String extension_image;
  final String alt_image;
  final int link_to_ecom;
  final String keywords;
  final String ecom_subcategories_id;
  final String ecom_products_filters_id;
  final String label_en;
  final String label_ar;
  final String label_fr;
  final ImageFrontEndMenusLinksModel image;
  FrontEndMenusLinksModel({
    this.id = 0,
    this.locked = 0,
    this.cancelled = 0,
    this.n00_cms_utilities_frontend_menus_id = 0,
    this.label = '',
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.link_to_ecom = 0,
    this.keywords = '',
    this.ecom_subcategories_id = '',
    this.ecom_products_filters_id = '',
    this.label_en = '',
    this.label_ar = '',
    this.label_fr = '',
    required this.image,
  });

  FrontEndMenusLinksModel copyWith({
    int? id,
    int? locked,
    int? cancelled,
    int? n00_cms_utilities_frontend_menus_id,
    String? label,
    String? extension_image,
    String? alt_image,
    int? link_to_ecom,
    String? keywords,
    String? ecom_subcategories_id,
    String? ecom_products_filters_id,
    String? label_en,
    String? label_ar,
    String? label_fr,
    ImageFrontEndMenusLinksModel? image,
  }) {
    return FrontEndMenusLinksModel(
      id: id ?? this.id,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      n00_cms_utilities_frontend_menus_id:
          n00_cms_utilities_frontend_menus_id ??
              this.n00_cms_utilities_frontend_menus_id,
      label: label ?? this.label,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      link_to_ecom: link_to_ecom ?? this.link_to_ecom,
      keywords: keywords ?? this.keywords,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      ecom_products_filters_id:
          ecom_products_filters_id ?? this.ecom_products_filters_id,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      label_fr: label_fr ?? this.label_fr,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'locked': locked,
      'cancelled': cancelled,
      '00_cms_utilities_frontend_menus_id': n00_cms_utilities_frontend_menus_id,
      'label': label,
      'extension_image': extension_image,
      'alt_image': alt_image,
      'link_to_ecom': link_to_ecom,
      'keywords': keywords,
      'ecom_subcategories_id': ecom_subcategories_id,
      'ecom_products_filters_id': ecom_products_filters_id,
      'label_en': label_en,
      'label_ar': label_ar,
      'label_fr': label_fr,
      'image': image.toMap(),
    };
  }

  factory FrontEndMenusLinksModel.fromMap(Map<String, dynamic> map) {
    return FrontEndMenusLinksModel(
      id: map['id']?.toInt() ?? 0,
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      n00_cms_utilities_frontend_menus_id:
          map['00_cms_utilities_frontend_menus_id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      link_to_ecom: map['link_to_ecom']?.toInt() ?? 0,
      keywords: jsonEncode(map['keywords'] ?? []),
      ecom_subcategories_id: jsonEncode(map['ecom_subcategories_id'] ?? []),
      ecom_products_filters_id:
          jsonEncode(map['ecom_products_filters_id'] ?? []),
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      image: ImageFrontEndMenusLinksModel.fromMap(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FrontEndMenusLinksModel.fromJson(String source) =>
      FrontEndMenusLinksModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FrontEndMenusLinks(id: $id, locked: $locked, cancelled: $cancelled, n00_cms_utilities_frontend_menus_id: $n00_cms_utilities_frontend_menus_id, label: $label, extension_image: $extension_image, alt_image: $alt_image, link_to_ecom: $link_to_ecom, keywords: $keywords, ecom_subcategories_id: $ecom_subcategories_id, ecom_products_filters_id: $ecom_products_filters_id, label_en: $label_en, label_ar: $label_ar, label_fr: $label_fr, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FrontEndMenusLinksModel &&
        other.id == id &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.n00_cms_utilities_frontend_menus_id ==
            n00_cms_utilities_frontend_menus_id &&
        other.label == label &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        other.link_to_ecom == link_to_ecom &&
        other.keywords == keywords &&
        other.ecom_subcategories_id == ecom_subcategories_id &&
        other.ecom_products_filters_id == ecom_products_filters_id &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.label_fr == label_fr &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        n00_cms_utilities_frontend_menus_id.hashCode ^
        label.hashCode ^
        extension_image.hashCode ^
        alt_image.hashCode ^
        link_to_ecom.hashCode ^
        keywords.hashCode ^
        ecom_subcategories_id.hashCode ^
        ecom_products_filters_id.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        label_fr.hashCode ^
        image.hashCode;
  }
}

class ImageFrontEndMenusLinksModel {
  final String image;
  final String thumb;
  final String alt;
  ImageFrontEndMenusLinksModel({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
    this.alt = '',
  });

  ImageFrontEndMenusLinksModel copyWith({
    String? image,
    String? thumb,
    String? alt,
  }) {
    return ImageFrontEndMenusLinksModel(
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

  factory ImageFrontEndMenusLinksModel.fromMap(Map<String, dynamic> map) {
    return ImageFrontEndMenusLinksModel(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt: map['alt'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageFrontEndMenusLinksModel.fromJson(String source) =>
      ImageFrontEndMenusLinksModel.fromMap(json.decode(source));

  @override
  String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageFrontEndMenusLinksModel &&
        other.image == image &&
        other.thumb == thumb &&
        other.alt == alt;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode ^ alt.hashCode;
}
