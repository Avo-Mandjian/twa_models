import 'dart:convert';

class Currency {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String name;
  final String label;
  final int display;
  final String symbol;
  final String rate;
  final int nb_decimal;
  final String direction;
  final int rounding;
  final String countries_id_ban;
  final String symbol_en;
  final String symbol_ar;
  final String separator_thousands;
  final String separator_decimal;
  final String name_en;
  final String name_ar;
  final String label_en;
  final String label_ar;
  final String name_fr;
  final String label_fr;
  final String symbol_fr;
  final String iso;
  final String seo_attributes;
  final bool selected;
  Currency({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.name = '',
    this.label = '',
    this.display = 0,
    this.symbol = '',
    this.rate = '',
    this.nb_decimal = 0,
    this.direction = '',
    this.rounding = 0,
    this.countries_id_ban = '',
    this.symbol_en = '',
    this.symbol_ar = '',
    this.separator_thousands = '',
    this.separator_decimal = '',
    this.name_en = '',
    this.name_ar = '',
    this.label_en = '',
    this.label_ar = '',
    this.name_fr = '',
    this.label_fr = '',
    this.symbol_fr = '',
    this.iso = '',
    this.seo_attributes = '',
    this.selected = false,
  });

  Currency copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? name,
    String? label,
    int? display,
    String? symbol,
    String? rate,
    int? nb_decimal,
    String? direction,
    int? rounding,
    String? countries_id_ban,
    String? symbol_en,
    String? symbol_ar,
    String? separator_thousands,
    String? separator_decimal,
    String? name_en,
    String? name_ar,
    String? label_en,
    String? label_ar,
    String? name_fr,
    String? label_fr,
    String? symbol_fr,
    String? iso,
    String? seo_attributes,
    bool? selected,
  }) {
    return Currency(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      name: name ?? this.name,
      label: label ?? this.label,
      display: display ?? this.display,
      symbol: symbol ?? this.symbol,
      rate: rate ?? this.rate,
      nb_decimal: nb_decimal ?? this.nb_decimal,
      direction: direction ?? this.direction,
      rounding: rounding ?? this.rounding,
      countries_id_ban: countries_id_ban ?? this.countries_id_ban,
      symbol_en: symbol_en ?? this.symbol_en,
      symbol_ar: symbol_ar ?? this.symbol_ar,
      separator_thousands: separator_thousands ?? this.separator_thousands,
      separator_decimal: separator_decimal ?? this.separator_decimal,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      name_fr: name_fr ?? this.name_fr,
      label_fr: label_fr ?? this.label_fr,
      symbol_fr: symbol_fr ?? this.symbol_fr,
      iso: iso ?? this.iso,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      selected: selected ?? this.selected,
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
      'name': name,
      'label': label,
      'display': display,
      'symbol': symbol,
      'rate': rate,
      'nb_decimal': nb_decimal,
      'direction': direction,
      'rounding': rounding,
      'countries_id_ban': countries_id_ban,
      'symbol_en': symbol_en,
      'symbol_ar': symbol_ar,
      'separator_thousands': separator_thousands,
      'separator_decimal': separator_decimal,
      'name_en': name_en,
      'name_ar': name_ar,
      'label_en': label_en,
      'label_ar': label_ar,
      'name_fr': name_fr,
      'label_fr': label_fr,
      'symbol_fr': symbol_fr,
      'iso': iso,
      'seo_attributes': seo_attributes,
      'selected': selected,
    };
  }

  factory Currency.fromMap(Map<String, dynamic> map) {
    return Currency(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      name: map['name'] ?? '',
      label: map['label'] ?? '',
      display: map['display']?.toInt() ?? 0,
      symbol: map['symbol'] ?? '',
      rate: map['rate'] ?? '',
      nb_decimal: map['nb_decimal']?.toInt() ?? 0,
      direction: map['direction'] ?? '',
      rounding: map['rounding']?.toInt() ?? 0,
      countries_id_ban: map['countries_id_ban'] ?? '',
      symbol_en: map['symbol_en'] ?? '',
      symbol_ar: map['symbol_ar'] ?? '',
      separator_thousands: map['separator_thousands'] ?? '',
      separator_decimal: map['separator_decimal'] ?? '',
      name_en: map['name_en'] ?? '',
      name_ar: map['name_ar'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      name_fr: map['name_fr'] ?? '',
      label_fr: map['label_fr'] ?? '',
      symbol_fr: map['symbol_fr'] ?? '',
      iso: map['iso'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      selected: map['selected'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Currency.fromJson(String source) =>
      Currency.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Currency(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, name: $name, label: $label, display: $display, symbol: $symbol, rate: $rate, nb_decimal: $nb_decimal, direction: $direction, rounding: $rounding, countries_id_ban: $countries_id_ban, symbol_en: $symbol_en, symbol_ar: $symbol_ar, separator_thousands: $separator_thousands, separator_decimal: $separator_decimal, name_en: $name_en, name_ar: $name_ar, label_en: $label_en, label_ar: $label_ar, name_fr: $name_fr, label_fr: $label_fr, symbol_fr: $symbol_fr, iso: $iso, seo_attributes: $seo_attributes, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Currency &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.name == name &&
        other.label == label &&
        other.display == display &&
        other.symbol == symbol &&
        other.rate == rate &&
        other.nb_decimal == nb_decimal &&
        other.direction == direction &&
        other.rounding == rounding &&
        other.countries_id_ban == countries_id_ban &&
        other.symbol_en == symbol_en &&
        other.symbol_ar == symbol_ar &&
        other.separator_thousands == separator_thousands &&
        other.separator_decimal == separator_decimal &&
        other.name_en == name_en &&
        other.name_ar == name_ar &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.name_fr == name_fr &&
        other.label_fr == label_fr &&
        other.symbol_fr == symbol_fr &&
        other.iso == iso &&
        other.seo_attributes == seo_attributes &&
        other.selected == selected;
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
        name.hashCode ^
        label.hashCode ^
        display.hashCode ^
        symbol.hashCode ^
        rate.hashCode ^
        nb_decimal.hashCode ^
        direction.hashCode ^
        rounding.hashCode ^
        countries_id_ban.hashCode ^
        symbol_en.hashCode ^
        symbol_ar.hashCode ^
        separator_thousands.hashCode ^
        separator_decimal.hashCode ^
        name_en.hashCode ^
        name_ar.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        name_fr.hashCode ^
        label_fr.hashCode ^
        symbol_fr.hashCode ^
        iso.hashCode ^
        seo_attributes.hashCode ^
        selected.hashCode;
  }
}
