import 'dart:convert';

class StateModel {
  final String key;
  final String value;
  StateModel({
    this.key = '',
    this.value = '',
  });

  StateModel copyWith({
    String? key,
    String? value,
  }) {
    return StateModel(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'value': value,
    };
  }

  factory StateModel.fromMap(Map<String, dynamic> map) {
    return StateModel(
      key: map['key'] ?? '',
      value: map['value'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StateModel.fromJson(String source) =>
      StateModel.fromMap(json.decode(source));

  @override
  String toString() => 'StateModel(key: $key, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StateModel && other.key == key && other.value == value;
  }

  @override
  int get hashCode => key.hashCode ^ value.hashCode;
}
