import 'dart:convert';

class Popularsearches {
  final String text;
  final int total;
  Popularsearches({
    this.text = '',
    this.total = 0,
  });

  Popularsearches copyWith({
    String? text,
    int? total,
  }) {
    return Popularsearches(
      text: text ?? this.text,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'total': total,
    };
  }

  factory Popularsearches.fromMap(Map<String, dynamic> map) {
    return Popularsearches(
      text: map['text'] ?? '',
      total: map['total']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Popularsearches.fromJson(String source) =>
      Popularsearches.fromMap(json.decode(source));

  @override
  String toString() => 'Popularsearches(text: $text, total: $total)';
}
