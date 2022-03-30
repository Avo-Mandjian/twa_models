import 'dart:convert';

class CountryModel {
  final int id;
  final String code;
  final String name;
  final int cancelled;
  final int shipping_available;
  final double shipping_fees;
  final int locked;
  final int vat;
  final int display;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int version;
  final String phone_code;
  final String cms_attributes;
  final int state_required;
  final int zipcode_required;
  final int delivery_date_required;
  final int map_required;
  final String ecom_shipping_zones_id;
  final List ecom_currencies_id;
  final String ban_ecom_currencies_id;
  final String name_en;
  final String name_ar;
  final String name_fr;
  final String seo_attributes;
  final String zip_code_format;
  CountryModel({
    this.id = 0,
    this.code = '',
    this.name = '',
    this.cancelled = 0,
    this.shipping_available = 0,
    this.shipping_fees = 0.0,
    this.locked = 0,
    this.vat = 0,
    this.display = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.version = 0,
    this.phone_code = '',
    this.cms_attributes = '',
    this.state_required = 0,
    this.zipcode_required = 0,
    this.delivery_date_required = 0,
    this.map_required = 0,
    this.ecom_shipping_zones_id = '',
    this.ecom_currencies_id = const [],
    this.ban_ecom_currencies_id = '',
    this.name_en = '',
    this.name_ar = '',
    this.name_fr = '',
    this.seo_attributes = '',
    this.zip_code_format = '',
  });

  CountryModel copyWith({
    int? id,
    String? code,
    String? name,
    int? cancelled,
    int? shipping_available,
    double? shipping_fees,
    int? locked,
    int? vat,
    int? display,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? version,
    String? phone_code,
    String? cms_attributes,
    int? state_required,
    int? zipcode_required,
    int? delivery_date_required,
    int? map_required,
    String? ecom_shipping_zones_id,
    List? ecom_currencies_id,
    String? ban_ecom_currencies_id,
    String? name_en,
    String? name_ar,
    String? name_fr,
    String? seo_attributes,
    String? zip_code_format,
  }) {
    return CountryModel(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      cancelled: cancelled ?? this.cancelled,
      shipping_available: shipping_available ?? this.shipping_available,
      shipping_fees: shipping_fees ?? this.shipping_fees,
      locked: locked ?? this.locked,
      vat: vat ?? this.vat,
      display: display ?? this.display,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      version: version ?? this.version,
      phone_code: phone_code ?? this.phone_code,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      state_required: state_required ?? this.state_required,
      zipcode_required: zipcode_required ?? this.zipcode_required,
      delivery_date_required:
          delivery_date_required ?? this.delivery_date_required,
      map_required: map_required ?? this.map_required,
      ecom_shipping_zones_id:
          ecom_shipping_zones_id ?? this.ecom_shipping_zones_id,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      ban_ecom_currencies_id:
          ban_ecom_currencies_id ?? this.ban_ecom_currencies_id,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      name_fr: name_fr ?? this.name_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      zip_code_format: zip_code_format ?? this.zip_code_format,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'cancelled': cancelled,
      'shipping_available': shipping_available,
      'shipping_fees': shipping_fees,
      'locked': locked,
      'vat': vat,
      'display': display,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'version': version,
      'phone_code': phone_code,
      'cms_attributes': cms_attributes,
      'state_required': state_required,
      'zipcode_required': zipcode_required,
      'map_required': map_required,
      'ecom_shipping_zones_id': ecom_shipping_zones_id,
      'ecom_currencies_id': ecom_currencies_id,
      'ban_ecom_currencies_id': ban_ecom_currencies_id,
      'name_en': name_en,
      'name_ar': name_ar,
      'name_fr': name_fr,
      'seo_attributes': seo_attributes,
      'zip_code_format': zip_code_format,
    };
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      id: map['id']?.toInt() ?? 0,
      code: map['code'] ?? '',
      name: map['name'] ?? '',
      cancelled: map['cancelled']?.toInt() ?? 0,
      shipping_available: map['shipping_available']?.toInt() ?? 0,
      shipping_fees: map['shipping_fees']?.toDouble() ?? 0.0,
      locked: map['locked']?.toInt() ?? 0,
      vat: map['vat']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
      phone_code: map['phone_code'] ?? '',
      cms_attributes: map['cms_attributes'] ?? '',
      state_required: map['state_required']?.toInt() ?? 0,
      zipcode_required: map['zipcode_required']?.toInt() ?? 0,
      delivery_date_required: map['delivery_date_required']?.toInt() ?? 0,
      map_required: map['map_required']?.toInt() ?? 0,
      ecom_shipping_zones_id: map['ecom_shipping_zones_id'] ?? '',
      ecom_currencies_id: map['ecom_currencies_id'] ?? ['1'],
      // jsonDecode(
      //   map['ecom_currencies_id'] ?? "[\"1\",\"6\"]",
      // ),
      ban_ecom_currencies_id: map['ban_ecom_currencies_id'] ?? '',
      name_en: map['name_en'] ?? '',
      name_ar: map['name_ar'] ?? '',
      name_fr: map['name_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      zip_code_format: map['zip_code_format'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) =>
      CountryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CountryModel(id: $id, code: $code, name: $name, cancelled: $cancelled, shipping_available: $shipping_available, shipping_fees: $shipping_fees, locked: $locked, vat: $vat, display: $display, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, version: $version, phone_code: $phone_code, cms_attributes: $cms_attributes, state_required: $state_required, zipcode_required: $zipcode_required, ecom_shipping_zones_id: $ecom_shipping_zones_id, ecom_currencies_id: $ecom_currencies_id, ban_ecom_currencies_id: $ban_ecom_currencies_id, name_en: $name_en, name_ar: $name_ar, name_fr: $name_fr, seo_attributes: $seo_attributes, zip_code_format: $zip_code_format)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CountryModel &&
        other.id == id &&
        other.code == code &&
        other.name == name &&
        other.cancelled == cancelled &&
        other.shipping_available == shipping_available &&
        other.shipping_fees == shipping_fees &&
        other.locked == locked &&
        other.vat == vat &&
        other.display == display &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.version == version &&
        other.phone_code == phone_code &&
        other.cms_attributes == cms_attributes &&
        other.state_required == state_required &&
        other.zipcode_required == zipcode_required &&
        other.zipcode_required == zipcode_required &&
        other.map_required == map_required &&
        other.ecom_shipping_zones_id == ecom_shipping_zones_id &&
        other.ecom_currencies_id == ecom_currencies_id &&
        other.ban_ecom_currencies_id == ban_ecom_currencies_id &&
        other.name_en == name_en &&
        other.name_ar == name_ar &&
        other.name_fr == name_fr &&
        other.seo_attributes == seo_attributes &&
        other.zip_code_format == zip_code_format;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        code.hashCode ^
        name.hashCode ^
        cancelled.hashCode ^
        shipping_available.hashCode ^
        shipping_fees.hashCode ^
        locked.hashCode ^
        vat.hashCode ^
        display.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        deleted_at.hashCode ^
        version.hashCode ^
        phone_code.hashCode ^
        cms_attributes.hashCode ^
        state_required.hashCode ^
        zipcode_required.hashCode ^
        zipcode_required.hashCode ^
        map_required.hashCode ^
        ecom_shipping_zones_id.hashCode ^
        ecom_currencies_id.hashCode ^
        ban_ecom_currencies_id.hashCode ^
        name_en.hashCode ^
        name_ar.hashCode ^
        name_fr.hashCode ^
        seo_attributes.hashCode ^
        zip_code_format.hashCode;
  }
}
