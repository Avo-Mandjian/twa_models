import 'dart:convert';

class PhoneModel {
  final String code;
  final int phone_code;
  final int selected;
  PhoneModel({
    this.code = '',
    this.phone_code = 0,
    this.selected = 0,
  });

  PhoneModel copyWith({
    String? code,
    int? phone_code,
    int? selected,
  }) {
    return PhoneModel(
      code: code ?? this.code,
      phone_code: phone_code ?? this.phone_code,
      selected: selected ?? this.selected,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'phone_code': phone_code,
      'selected': selected,
    };
  }

  factory PhoneModel.fromMap(Map<String, dynamic> map) {
    return PhoneModel(
      code: map['code'] ?? '',
      phone_code: map['phone_code']?.toInt() ?? 0,
      selected: map['selected']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PhoneModel.fromJson(String source) =>
      PhoneModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'PhoneModel(code: $code, phone_code: $phone_code, selected: $selected)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhoneModel &&
        other.code == code &&
        other.phone_code == phone_code &&
        other.selected == selected;
  }

  @override
  int get hashCode => code.hashCode ^ phone_code.hashCode ^ selected.hashCode;
}
