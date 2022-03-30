import 'dart:convert';

import 'package:twa_models/models/utilities/countries/country_model.dart';

class AddressModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int ecom_users_id;
  final String label;
  final String first_name;
  final String last_name;
  final String phone;
  final int weight;
  final int countries_id;
  final String state;
  final String city;
  final String street;
  final String floor;
  final String building;
  final String postal_code;
  final String delivery_note;
  final String cms_attributesshipping_address_details;
  final String type;
  final int isDefault;
  final int ecom_stores_id;
  final String seo_attributes;
  final String longitude;
  final String latitude;
  final CountryModel country;
  final String phone_country_code;
  final String phone_original;
  final String state_info;
  AddressModel({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.ecom_users_id = 0,
    this.label = '',
    this.first_name = '',
    this.last_name = '',
    this.phone = '',
    this.weight = 0,
    this.countries_id = 0,
    this.state = '',
    this.city = '',
    this.street = '',
    this.floor = '',
    this.building = '',
    this.postal_code = '',
    this.delivery_note = '',
    this.cms_attributesshipping_address_details = '',
    this.type = '',
    this.isDefault = 0,
    this.ecom_stores_id = 0,
    this.seo_attributes = '',
    this.longitude = '',
    this.latitude = '',
    required this.country,
    this.phone_country_code = '',
    this.phone_original = '',
    this.state_info = '',
  });

  AddressModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? ecom_users_id,
    String? label,
    String? first_name,
    String? last_name,
    String? phone,
    int? weight,
    int? countries_id,
    String? state,
    String? city,
    String? street,
    String? floor,
    String? building,
    String? postal_code,
    String? delivery_note,
    String? cms_attributesshipping_address_details,
    String? type,
    int? isDefault,
    int? ecom_stores_id,
    String? seo_attributes,
    String? longitude,
    String? latitude,
    CountryModel? country,
    String? phone_country_code,
    String? phone_original,
    String? state_info,
  }) {
    return AddressModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      ecom_users_id: ecom_users_id ?? this.ecom_users_id,
      label: label ?? this.label,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      phone: phone ?? this.phone,
      weight: weight ?? this.weight,
      countries_id: countries_id ?? this.countries_id,
      state: state ?? this.state,
      city: city ?? this.city,
      street: street ?? this.street,
      floor: floor ?? this.floor,
      building: building ?? this.building,
      postal_code: postal_code ?? this.postal_code,
      delivery_note: delivery_note ?? this.delivery_note,
      cms_attributesshipping_address_details:
          cms_attributesshipping_address_details ??
              this.cms_attributesshipping_address_details,
      type: type ?? this.type,
      isDefault: isDefault ?? this.isDefault,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      country: country ?? this.country,
      phone_country_code: phone_country_code ?? this.phone_country_code,
      phone_original: phone_original ?? this.phone_original,
      state_info: state_info ?? this.state_info,
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
      'ecom_users_id': ecom_users_id,
      'label': label,
      'first_name': first_name,
      'last_name': last_name,
      'phone': phone,
      'weight': weight,
      'countries_id': countries_id,
      'state': state,
      'city': city,
      'street': street,
      'floor': floor,
      'building': building,
      'postal_code': postal_code,
      'delivery_note': delivery_note,
      'cms_attributesshipping_address_details':
          cms_attributesshipping_address_details,
      'type': type,
      'default': isDefault,
      'ecom_stores_id': ecom_stores_id,
      'seo_attributes': seo_attributes,
      'longitude': longitude,
      'latitude': latitude,
      'country': country.toMap(),
      'phone_country_code': phone_country_code,
      'phone_original': phone_original,
      'state_info': state_info,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      ecom_users_id: map['ecom_users_id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      phone: map['phone'] ?? '',
      weight: map['weight']?.toInt() ?? 0,
      countries_id: map['countries_id']?.toInt() ?? 0,
      state: map['state'] ?? '',
      city: map['city'] ?? '',
      street: map['street'] ?? '',
      floor: map['floor'] ?? '',
      building: map['building'] ?? '',
      postal_code: map['postal_code'] ?? '',
      delivery_note: map['delivery_note'] ?? '',
      cms_attributesshipping_address_details:
          map['cms_attributesshipping_address_details'] ?? '',
      type: map['type'] ?? '',
      isDefault: map['default']?.toInt() ?? 0,
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      longitude: map['longitude'] ?? '',
      latitude: map['latitude'] ?? '',
      country: CountryModel.fromMap(map['country']),
      phone_country_code: map['phone_country_code'] ?? '',
      phone_original: map['phone_original'] ?? '',
      state_info: jsonEncode(map['state_info'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AddressModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, ecom_users_id: $ecom_users_id, label: $label, first_name: $first_name, last_name: $last_name, phone: $phone, weight: $weight, countries_id: $countries_id, state: $state, city: $city, street: $street, floor: $floor, building: $building, postal_code: $postal_code, delivery_note: $delivery_note, cms_attributesshipping_address_details: $cms_attributesshipping_address_details, type: $type, isDefault: $isDefault, ecom_stores_id: $ecom_stores_id, seo_attributes: $seo_attributes, longitude: $longitude, latitude: $latitude, country: $country, phone_country_code: $phone_country_code, phone_original: $phone_original, state_info: $state_info)';
  }
}
