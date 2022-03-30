import 'dart:convert';

class Modifiers {
  String? id;
  String? message;
  Modifiers({
    this.id,
    this.message,
  });

  Modifiers copyWith({
    String? id,
    String? message,
  }) {
    return Modifiers(
      id: id ?? this.id,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
    };
  }

  factory Modifiers.fromMap(Map<String, dynamic> map) {
    return Modifiers(
      id: map['id']?.toInt(),
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Modifiers.fromJson(String source) =>
      Modifiers.fromMap(json.decode(source));

  @override
  String toString() => 'Modifiers(id: $id, message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Modifiers && other.id == id && other.message == message;
  }

  @override
  int get hashCode => id.hashCode ^ message.hashCode;
}
