import 'dart:convert';

class UserChallange {
  final String challenge;
  UserChallange({
    this.challenge = '',
  });

  UserChallange copyWith({
    String? challenge,
  }) {
    return UserChallange(
      challenge: challenge ?? this.challenge,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'challenge': challenge,
    };
  }

  factory UserChallange.fromMap(Map<String, dynamic> map) {
    return UserChallange(
      challenge: map['challenge'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserChallange.fromJson(String source) =>
      UserChallange.fromMap(json.decode(source));

  @override
  String toString() => 'UsersMobileLogin(challenge: $challenge)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserChallange && other.challenge == challenge;
  }

  @override
  int get hashCode => challenge.hashCode;
}
