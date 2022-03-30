import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:twa_models/models/utilities/countries/country_model.dart';

import '../../utilities/currencies/currency_model.dart';

class StoreModel {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final String label;
  final String group;
  final List<String> countries_id;
  final int default_ecom_currencies_id;
  final String ecom_currencies_id;
  final int default_cod_ecom_currencies_id;
  final String default_language;
  final List<String> languages;
  final String ref_prefix;
  final String web_prefix;
  final String email_notifications;
  final String cms_attributes;
  final String header_message;
  // final double free_delivery;
  final double min_order;
  final List<OperationManager> operation_managers;
  final List<StoreManager> store_managers;
  final String flag_countries_id;
  final String label_en;
  final String label_ar;
  final String header_message_en;
  final String header_message_ar;
  final String group_en;
  final String group_ar;
  final String support_number;
  final String instagram_page_link;
  final String support_number_en;
  final String support_number_ar;
  final String contact_us_store_information;
  final String contact_us_store_information_en;
  final String contact_us_store_information_ar;
  final String label_fr;
  final String support_number_fr;
  final String contact_us_store_information_fr;
  final String header_message_fr;
  final int published;
  final int tax;
  final String group_fr;
  final String seo_attributes;
  final int show_menu;
  final int delivery_date_required;
  final int scheduled_delivery_id;
  final int map_required;
  final String polygon_file;
  final String extension_polygon_file;
  final String alt_polygon_file;
  final String static_city_name;
  final String domains;
  final String scripts;
  final String redirection_link;
  final String company_name;
  final String company_address;
  final String company_vat;
  final int default_website;
  final String static_city_names;
  final String static_city_names_en;
  final String static_city_names_fr;
  final String static_city_names_ar;
  final List<GaTracking> ga_tracking;
  final List<GaTrackingOld> ga_tracking_old;
  final String tax_mode;
  final String umami_tracking;
  final List<Currency> ecom_currencies_id_object;
  final List<CountryModel> countries;
  StoreModel({
    this.id = 0,
    required this.countries,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.label = '',
    this.group = '',
    this.countries_id = const [],
    this.default_ecom_currencies_id = 0,
    this.ecom_currencies_id = '',
    this.default_cod_ecom_currencies_id = 0,
    this.default_language = '',
    this.languages = const [],
    this.ref_prefix = '',
    this.web_prefix = '',
    this.email_notifications = '',
    required this.cms_attributes,
    this.header_message = '',
    // this.free_delivery = 0.0,
    this.min_order = 0.0,
    this.operation_managers = const [],
    this.store_managers = const [],
    this.flag_countries_id = '',
    this.label_en = '',
    this.label_ar = '',
    this.header_message_en = '',
    this.header_message_ar = '',
    this.group_en = '',
    this.group_ar = '',
    this.support_number = '',
    this.instagram_page_link = '',
    this.support_number_en = '',
    this.support_number_ar = '',
    this.contact_us_store_information = '',
    this.contact_us_store_information_en = '',
    this.contact_us_store_information_ar = '',
    this.label_fr = '',
    this.support_number_fr = '',
    this.contact_us_store_information_fr = '',
    this.header_message_fr = '',
    this.published = 0,
    this.tax = 0,
    this.group_fr = '',
    this.seo_attributes = '',
    this.show_menu = 0,
    this.delivery_date_required = 0,
    this.scheduled_delivery_id = 0,
    this.map_required = 0,
    this.polygon_file = '',
    this.extension_polygon_file = '',
    this.alt_polygon_file = '',
    this.static_city_name = '',
    this.domains = '',
    this.scripts = '',
    this.redirection_link = '',
    this.company_name = '',
    this.company_address = '',
    this.company_vat = '',
    this.default_website = 0,
    this.static_city_names = '',
    this.static_city_names_en = '',
    this.static_city_names_fr = '',
    this.static_city_names_ar = '',
    this.ga_tracking = const [],
    this.ga_tracking_old = const [],
    this.tax_mode = '',
    this.umami_tracking = '',
    this.ecom_currencies_id_object = const [],
  });

  StoreModel copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    String? label,
    String? group,
    List<String>? countries_id,
    int? default_ecom_currencies_id,
    String? ecom_currencies_id,
    int? default_cod_ecom_currencies_id,
    String? default_language,
    List<String>? languages,
    String? ref_prefix,
    String? web_prefix,
    String? email_notifications,
    String? cms_attributes,
    String? header_message,
    // double? free_delivery,
    double? min_order,
    List<OperationManager>? operation_managers,
    List<StoreManager>? store_managers,
    String? flag_countries_id,
    String? label_en,
    String? label_ar,
    String? header_message_en,
    String? header_message_ar,
    String? group_en,
    String? group_ar,
    String? support_number,
    String? instagram_page_link,
    String? support_number_en,
    String? support_number_ar,
    String? contact_us_store_information,
    String? contact_us_store_information_en,
    String? contact_us_store_information_ar,
    String? label_fr,
    String? support_number_fr,
    String? contact_us_store_information_fr,
    String? header_message_fr,
    int? published,
    int? tax,
    String? group_fr,
    String? seo_attributes,
    int? show_menu,
    int? delivery_date_required,
    int? scheduled_delivery_id,
    int? map_required,
    String? polygon_file,
    String? extension_polygon_file,
    String? alt_polygon_file,
    String? static_city_name,
    String? domains,
    String? scripts,
    String? redirection_link,
    String? company_name,
    String? company_address,
    String? company_vat,
    int? default_website,
    String? static_city_names,
    String? static_city_names_en,
    String? static_city_names_fr,
    String? static_city_names_ar,
    List<GaTracking>? ga_tracking,
    List<GaTrackingOld>? ga_tracking_old,
    String? tax_mode,
    String? umami_tracking,
    List<Currency>? ecom_currencies_id_object,
    List<CountryModel>? countries,
  }) {
    return StoreModel(
      id: id ?? this.id,
      countries: countries ?? this.countries,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      label: label ?? this.label,
      group: group ?? this.group,
      countries_id: countries_id ?? this.countries_id,
      default_ecom_currencies_id:
          default_ecom_currencies_id ?? this.default_ecom_currencies_id,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      default_cod_ecom_currencies_id:
          default_cod_ecom_currencies_id ?? this.default_cod_ecom_currencies_id,
      default_language: default_language ?? this.default_language,
      languages: languages ?? this.languages,
      ref_prefix: ref_prefix ?? this.ref_prefix,
      web_prefix: web_prefix ?? this.web_prefix,
      email_notifications: email_notifications ?? this.email_notifications,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      header_message: header_message ?? this.header_message,
      // free_delivery: free_delivery ?? this.free_delivery,
      min_order: min_order ?? this.min_order,
      operation_managers: operation_managers ?? this.operation_managers,
      store_managers: store_managers ?? this.store_managers,
      flag_countries_id: flag_countries_id ?? this.flag_countries_id,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      header_message_en: header_message_en ?? this.header_message_en,
      header_message_ar: header_message_ar ?? this.header_message_ar,
      group_en: group_en ?? this.group_en,
      group_ar: group_ar ?? this.group_ar,
      support_number: support_number ?? this.support_number,
      instagram_page_link: instagram_page_link ?? this.instagram_page_link,
      support_number_en: support_number_en ?? this.support_number_en,
      support_number_ar: support_number_ar ?? this.support_number_ar,
      contact_us_store_information:
          contact_us_store_information ?? this.contact_us_store_information,
      contact_us_store_information_en: contact_us_store_information_en ??
          this.contact_us_store_information_en,
      contact_us_store_information_ar: contact_us_store_information_ar ??
          this.contact_us_store_information_ar,
      label_fr: label_fr ?? this.label_fr,
      support_number_fr: support_number_fr ?? this.support_number_fr,
      contact_us_store_information_fr: contact_us_store_information_fr ??
          this.contact_us_store_information_fr,
      header_message_fr: header_message_fr ?? this.header_message_fr,
      published: published ?? this.published,
      tax: tax ?? this.tax,
      group_fr: group_fr ?? this.group_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      show_menu: show_menu ?? this.show_menu,
      delivery_date_required:
          delivery_date_required ?? this.delivery_date_required,
      scheduled_delivery_id:
          scheduled_delivery_id ?? this.scheduled_delivery_id,
      map_required: map_required ?? this.map_required,
      polygon_file: polygon_file ?? this.polygon_file,
      extension_polygon_file:
          extension_polygon_file ?? this.extension_polygon_file,
      alt_polygon_file: alt_polygon_file ?? this.alt_polygon_file,
      static_city_name: static_city_name ?? this.static_city_name,
      domains: domains ?? this.domains,
      scripts: scripts ?? this.scripts,
      redirection_link: redirection_link ?? this.redirection_link,
      company_name: company_name ?? this.company_name,
      company_address: company_address ?? this.company_address,
      company_vat: company_vat ?? this.company_vat,
      default_website: default_website ?? this.default_website,
      static_city_names: static_city_names ?? this.static_city_names,
      static_city_names_en: static_city_names_en ?? this.static_city_names_en,
      static_city_names_fr: static_city_names_fr ?? this.static_city_names_fr,
      static_city_names_ar: static_city_names_ar ?? this.static_city_names_ar,
      ga_tracking: ga_tracking ?? this.ga_tracking,
      ga_tracking_old: ga_tracking_old ?? this.ga_tracking_old,
      tax_mode: tax_mode ?? this.tax_mode,
      umami_tracking: umami_tracking ?? this.umami_tracking,
      ecom_currencies_id_object:
          ecom_currencies_id_object ?? this.ecom_currencies_id_object,
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
      'group': group,
      'countries_id': countries_id,
      'default_ecom_currencies_id': default_ecom_currencies_id,
      'ecom_currencies_id': ecom_currencies_id,
      'default_cod_ecom_currencies_id': default_cod_ecom_currencies_id,
      'default_language': default_language,
      'languages': languages,
      'ref_prefix': ref_prefix,
      'web_prefix': web_prefix,
      'email_notifications': email_notifications,
      'cms_attributes': cms_attributes,
      'header_message': header_message,
      // 'free_delivery': free_delivery,
      'min_order': min_order,
      'operation_managers': operation_managers.map((x) => x.toMap()).toList(),
      'store_managers': store_managers.map((x) => x.toMap()).toList(),
      'flag_countries_id': flag_countries_id,
      'label_en': label_en,
      'label_ar': label_ar,
      'header_message_en': header_message_en,
      'header_message_ar': header_message_ar,
      'group_en': group_en,
      'group_ar': group_ar,
      'support_number': support_number,
      'instagram_page_link': instagram_page_link,
      'support_number_en': support_number_en,
      'support_number_ar': support_number_ar,
      'contact_us_store_information': contact_us_store_information,
      'contact_us_store_information_en': contact_us_store_information_en,
      'contact_us_store_information_ar': contact_us_store_information_ar,
      'label_fr': label_fr,
      'support_number_fr': support_number_fr,
      'contact_us_store_information_fr': contact_us_store_information_fr,
      'header_message_fr': header_message_fr,
      'published': published,
      'tax': tax,
      'group_fr': group_fr,
      'seo_attributes': seo_attributes,
      'show_menu': show_menu,
      'delivery_date_required': delivery_date_required,
      'map_required': map_required,
      'polygon_file': polygon_file,
      'extension_polygon_file': extension_polygon_file,
      'alt_polygon_file': alt_polygon_file,
      'static_city_name': static_city_name,
      'domains': domains,
      'scripts': scripts,
      'redirection_link': redirection_link,
      'company_name': company_name,
      'company_address': company_address,
      'company_vat': company_vat,
      'default_website': default_website,
      'static_city_names': static_city_names,
      'static_city_names_en': static_city_names_en,
      'static_city_names_fr': static_city_names_fr,
      'static_city_names_ar': static_city_names_ar,
      'ga_tracking': ga_tracking.map((x) => x.toMap()).toList(),
      'ga_tracking_old': ga_tracking_old.map((x) => x.toMap()).toList(),
      'tax_mode': tax_mode,
      'umami_tracking': umami_tracking,
      'ecom_currencies_id_object':
          ecom_currencies_id_object.map((x) => x.toMap()).toList(),
      'countries': countries.map((x) => x.toMap()).toList(),
    };
  }

  factory StoreModel.fromMap(Map<String, dynamic> map) {
    return StoreModel(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      label: map['label'] ?? '',
      group: map['group'] ?? '',
      countries_id: List<String>.from(map['countries_id'] ?? const []),
      default_ecom_currencies_id:
          map['default_ecom_currencies_id']?.toInt() ?? 0,
      ecom_currencies_id: map['ecom_currencies_id'] ?? '',
      default_cod_ecom_currencies_id:
          map['default_cod_ecom_currencies_id']?.toInt() ?? 0,
      default_language: map['default_language'] ?? '',
      languages: List<String>.from(map['languages'] ?? const []),
      ref_prefix: map['ref_prefix'] ?? '',
      web_prefix: map['web_prefix'] ?? '',
      email_notifications: jsonEncode(map['email_notifications'] ?? {}),
      cms_attributes: map['cms_attributes'] ?? '',
      header_message: map['header_message'] ?? '',
      // free_delivery: map['free_delivery']?.toDouble() ?? 0.0,
      min_order: double.parse(jsonEncode(map['min_order'] ?? 0.0)),
      operation_managers: List<OperationManager>.from(
        map['operation_managers']?.map((x) => OperationManager.fromMap(x)) ??
            const [],
      ),
      store_managers: List<StoreManager>.from(
        map['store_managers']?.map((x) => StoreManager.fromMap(x)) ?? const [],
      ),
      flag_countries_id: map['flag_countries_id'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      header_message_en: map['header_message_en'] ?? '',
      header_message_ar: map['header_message_ar'] ?? '',
      group_en: map['group_en'] ?? '',
      group_ar: map['group_ar'] ?? '',
      support_number: map['support_number'] ?? '',
      instagram_page_link: map['instagram_page_link'] ?? '',
      support_number_en: map['support_number_en'] ?? '',
      support_number_ar: map['support_number_ar'] ?? '',
      contact_us_store_information: map['contact_us_store_information'] ?? '',
      contact_us_store_information_en:
          map['contact_us_store_information_en'] ?? '',
      contact_us_store_information_ar:
          map['contact_us_store_information_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      support_number_fr: map['support_number_fr'] ?? '',
      contact_us_store_information_fr:
          map['contact_us_store_information_fr'] ?? '',
      header_message_fr: map['header_message_fr'] ?? '',
      published: map['published']?.toInt() ?? 0,
      tax: map['tax']?.toInt() ?? 0,
      group_fr: map['group_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      show_menu: map['show_menu']?.toInt() ?? 0,
      delivery_date_required: map['delivery_date_required']?.toInt() ?? 0,
      scheduled_delivery_id: map['scheduled_delivery_id']?.toInt() ?? 0,
      map_required: map['map_required']?.toInt() ?? 0,
      polygon_file: map['polygon_file'] ?? '',
      extension_polygon_file: map['extension_polygon_file'] ?? '',
      alt_polygon_file: map['alt_polygon_file'] ?? '',
      static_city_name: map['static_city_name'] ?? '',
      domains: map['domains'] ?? '',
      scripts: map['scripts'] ?? '',
      redirection_link: map['redirection_link'] ?? '',
      company_name: map['company_name'] ?? '',
      company_address: map['company_address'] ?? '',
      company_vat: map['company_vat'] ?? '',
      default_website: map['default_website']?.toInt() ?? 0,
      static_city_names: map['static_city_names'] ?? '',
      static_city_names_en: map['static_city_names_en'] ?? '',
      static_city_names_fr: map['static_city_names_fr'] ?? '',
      static_city_names_ar: map['static_city_names_ar'] ?? '',
      ga_tracking: List<GaTracking>.from(
        map['ga_tracking']?.map((x) => GaTracking.fromMap(x)) ?? const [],
      ),
      ga_tracking_old: List<GaTrackingOld>.from(
        map['ga_tracking_old']?.map((x) => GaTrackingOld.fromMap(x)) ??
            const [],
      ),
      tax_mode: map['tax_mode'] ?? '',
      umami_tracking: map['umami_tracking'] ?? '',
      ecom_currencies_id_object: List<Currency>.from(
        map['ecom_currencies_id_object']?.map((x) => Currency.fromMap(x)) ??
            const [],
      ),
      countries: map['countries'].runtimeType == bool
          ? []
          : List<CountryModel>.from(
              map['countries']?.map((x) => CountryModel.fromMap(x)) ?? const [],
            ),
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreModel.fromJson(String source) =>
      StoreModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StoreModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, label: $label, group: $group, countries_id: $countries_id, default_ecom_currencies_id: $default_ecom_currencies_id, ecom_currencies_id: $ecom_currencies_id, default_cod_ecom_currencies_id: $default_cod_ecom_currencies_id, default_language: $default_language, languages: $languages, ref_prefix: $ref_prefix, web_prefix: $web_prefix, email_notifications: $email_notifications, cms_attributes: $cms_attributes, header_message: $header_message, free_delivery: , min_order: $min_order, operation_managers: $operation_managers, store_managers: $store_managers, flag_countries_id: $flag_countries_id, label_en: $label_en, label_ar: $label_ar, header_message_en: $header_message_en, header_message_ar: $header_message_ar, group_en: $group_en, group_ar: $group_ar, support_number: $support_number, instagram_page_link: $instagram_page_link, support_number_en: $support_number_en, support_number_ar: $support_number_ar, contact_us_store_information: $contact_us_store_information, contact_us_store_information_en: $contact_us_store_information_en, contact_us_store_information_ar: $contact_us_store_information_ar, label_fr: $label_fr, support_number_fr: $support_number_fr, contact_us_store_information_fr: $contact_us_store_information_fr, header_message_fr: $header_message_fr, published: $published, tax: $tax, group_fr: $group_fr, seo_attributes: $seo_attributes, show_menu: $show_menu, delivery_date_required: $delivery_date_required, map_required: $map_required, polygon_file: $polygon_file, extension_polygon_file: $extension_polygon_file, alt_polygon_file: $alt_polygon_file, static_city_name: $static_city_name, domains: $domains, scripts: $scripts, redirection_link: $redirection_link, company_name: $company_name, company_address: $company_address, company_vat: $company_vat, default_website: $default_website, static_city_names: $static_city_names, static_city_names_en: $static_city_names_en, static_city_names_fr: $static_city_names_fr, static_city_names_ar: $static_city_names_ar, ga_tracking: $ga_tracking, ga_tracking_old: $ga_tracking_old, tax_mode: $tax_mode, umami_tracking: $umami_tracking, ecom_currencies_id_object: $ecom_currencies_id_object)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoreModel &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.label == label &&
        other.group == group &&
        listEquals(other.countries_id, countries_id) &&
        listEquals(other.countries, countries) &&
        other.default_ecom_currencies_id == default_ecom_currencies_id &&
        other.ecom_currencies_id == ecom_currencies_id &&
        other.default_cod_ecom_currencies_id ==
            default_cod_ecom_currencies_id &&
        other.default_language == default_language &&
        listEquals(other.languages, languages) &&
        other.ref_prefix == ref_prefix &&
        other.web_prefix == web_prefix &&
        other.email_notifications == email_notifications &&
        other.cms_attributes == cms_attributes &&
        other.header_message == header_message &&
        // other.free_delivery == free_delivery &&
        other.min_order == min_order &&
        listEquals(other.operation_managers, operation_managers) &&
        listEquals(other.store_managers, store_managers) &&
        other.flag_countries_id == flag_countries_id &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.header_message_en == header_message_en &&
        other.header_message_ar == header_message_ar &&
        other.group_en == group_en &&
        other.group_ar == group_ar &&
        other.support_number == support_number &&
        other.instagram_page_link == instagram_page_link &&
        other.support_number_en == support_number_en &&
        other.support_number_ar == support_number_ar &&
        other.contact_us_store_information == contact_us_store_information &&
        other.contact_us_store_information_en ==
            contact_us_store_information_en &&
        other.contact_us_store_information_ar ==
            contact_us_store_information_ar &&
        other.label_fr == label_fr &&
        other.support_number_fr == support_number_fr &&
        other.contact_us_store_information_fr ==
            contact_us_store_information_fr &&
        other.header_message_fr == header_message_fr &&
        other.published == published &&
        other.tax == tax &&
        other.group_fr == group_fr &&
        other.seo_attributes == seo_attributes &&
        other.show_menu == show_menu &&
        other.delivery_date_required == delivery_date_required &&
        other.delivery_date_required == delivery_date_required &&
        other.map_required == map_required &&
        other.polygon_file == polygon_file &&
        other.extension_polygon_file == extension_polygon_file &&
        other.alt_polygon_file == alt_polygon_file &&
        other.static_city_name == static_city_name &&
        other.domains == domains &&
        other.scripts == scripts &&
        other.redirection_link == redirection_link &&
        other.company_name == company_name &&
        other.company_address == company_address &&
        other.company_vat == company_vat &&
        other.default_website == default_website &&
        other.static_city_names == static_city_names &&
        other.static_city_names_en == static_city_names_en &&
        other.static_city_names_fr == static_city_names_fr &&
        other.static_city_names_ar == static_city_names_ar &&
        listEquals(other.ga_tracking, ga_tracking) &&
        listEquals(other.ga_tracking_old, ga_tracking_old) &&
        other.tax_mode == tax_mode &&
        other.umami_tracking == umami_tracking &&
        listEquals(other.ecom_currencies_id_object, ecom_currencies_id_object);
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
        group.hashCode ^
        countries_id.hashCode ^
        countries.hashCode ^
        default_ecom_currencies_id.hashCode ^
        ecom_currencies_id.hashCode ^
        default_cod_ecom_currencies_id.hashCode ^
        default_language.hashCode ^
        languages.hashCode ^
        ref_prefix.hashCode ^
        web_prefix.hashCode ^
        email_notifications.hashCode ^
        cms_attributes.hashCode ^
        header_message.hashCode ^
        // free_delivery.hashCode ^
        min_order.hashCode ^
        operation_managers.hashCode ^
        store_managers.hashCode ^
        flag_countries_id.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        header_message_en.hashCode ^
        header_message_ar.hashCode ^
        group_en.hashCode ^
        group_ar.hashCode ^
        support_number.hashCode ^
        instagram_page_link.hashCode ^
        support_number_en.hashCode ^
        support_number_ar.hashCode ^
        contact_us_store_information.hashCode ^
        contact_us_store_information_en.hashCode ^
        contact_us_store_information_ar.hashCode ^
        label_fr.hashCode ^
        support_number_fr.hashCode ^
        contact_us_store_information_fr.hashCode ^
        header_message_fr.hashCode ^
        published.hashCode ^
        tax.hashCode ^
        group_fr.hashCode ^
        seo_attributes.hashCode ^
        show_menu.hashCode ^
        delivery_date_required.hashCode ^
        delivery_date_required.hashCode ^
        map_required.hashCode ^
        polygon_file.hashCode ^
        extension_polygon_file.hashCode ^
        alt_polygon_file.hashCode ^
        static_city_name.hashCode ^
        domains.hashCode ^
        scripts.hashCode ^
        redirection_link.hashCode ^
        company_name.hashCode ^
        company_address.hashCode ^
        company_vat.hashCode ^
        default_website.hashCode ^
        static_city_names.hashCode ^
        static_city_names_en.hashCode ^
        static_city_names_fr.hashCode ^
        static_city_names_ar.hashCode ^
        ga_tracking.hashCode ^
        ga_tracking_old.hashCode ^
        tax_mode.hashCode ^
        umami_tracking.hashCode ^
        ecom_currencies_id_object.hashCode;
  }
}

class OperationManager {
  final String first_name;
  final String last_name;
  final String email;
  OperationManager({
    this.first_name = '',
    this.last_name = '',
    this.email = '',
  });

  OperationManager copyWith({
    String? first_name,
    String? last_name,
    String? email,
  }) {
    return OperationManager(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
    };
  }

  factory OperationManager.fromMap(Map<String, dynamic> map) {
    return OperationManager(
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OperationManager.fromJson(String source) =>
      OperationManager.fromMap(json.decode(source));

  @override
  String toString() =>
      'Operation_manager(first_name: $first_name, last_name: $last_name, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OperationManager &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email;
  }

  @override
  int get hashCode => first_name.hashCode ^ last_name.hashCode ^ email.hashCode;
}

class StoreManager {
  final String first_name;
  final String last_name;
  final String email;
  StoreManager({
    this.first_name = '',
    this.last_name = '',
    this.email = '',
  });

  StoreManager copyWith({
    String? first_name,
    String? last_name,
    String? email,
  }) {
    return StoreManager(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
    };
  }

  factory StoreManager.fromMap(Map<String, dynamic> map) {
    return StoreManager(
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreManager.fromJson(String source) =>
      StoreManager.fromMap(json.decode(source));

  @override
  String toString() =>
      'Store_manager(first_name: $first_name, last_name: $last_name, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoreManager &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email;
  }

  @override
  int get hashCode => first_name.hashCode ^ last_name.hashCode ^ email.hashCode;
}

class GaTracking {
  final String tracking_id;
  GaTracking({
    this.tracking_id = '',
  });

  GaTracking copyWith({
    String? tracking_id,
  }) {
    return GaTracking(
      tracking_id: tracking_id ?? this.tracking_id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tracking_id': tracking_id,
    };
  }

  factory GaTracking.fromMap(Map<String, dynamic> map) {
    return GaTracking(
      tracking_id: map['tracking_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GaTracking.fromJson(String source) =>
      GaTracking.fromMap(json.decode(source));

  @override
  String toString() => 'Ga_tracking(tracking_id: $tracking_id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GaTracking && other.tracking_id == tracking_id;
  }

  @override
  int get hashCode => tracking_id.hashCode;
}

class GaTrackingOld {
  final String tracking_id;
  GaTrackingOld({
    this.tracking_id = '',
  });

  GaTrackingOld copyWith({
    String? tracking_id,
  }) {
    return GaTrackingOld(
      tracking_id: tracking_id ?? this.tracking_id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tracking_id': tracking_id,
    };
  }

  factory GaTrackingOld.fromMap(Map<String, dynamic> map) {
    return GaTrackingOld(
      tracking_id: map['tracking_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GaTrackingOld.fromJson(String source) =>
      GaTrackingOld.fromMap(json.decode(source));

  @override
  String toString() => 'Ga_tracking_old(tracking_id: $tracking_id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GaTrackingOld && other.tracking_id == tracking_id;
  }

  @override
  int get hashCode => tracking_id.hashCode;
}
