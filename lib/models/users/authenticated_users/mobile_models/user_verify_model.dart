import 'dart:convert';

class UserVerify {
  final int id;
  final String deleted_at;
  final int version;
  final int verified;
  final String first_name;
  final String last_name;
  final String email;
  final String phone;
  dynamic countries_id;
  final String token;
  final String ecom_currencies_id;
  final String failed_logins;
  final String failed_login_at;
  final String verified_at;
  final String phone_country_code;
  final String phone_original;
  final String gender;
  final String birthdate;
  final String pin;
  final int forceUpdateProfile;
  UserVerify({
    this.id = -1,
    this.deleted_at = '',
    this.version = 0,
    this.verified = 0,
    this.first_name = '',
    this.last_name = '',
    this.email = '',
    this.phone = '',
    var this.countries_id,
    this.token = '',
    this.ecom_currencies_id = '',
    this.failed_logins = '',
    this.failed_login_at = '',
    this.verified_at = '',
    this.phone_country_code = '',
    this.phone_original = '',
    this.gender = '',
    this.birthdate = '',
    this.pin = '',
    this.forceUpdateProfile = 0,
  });

  UserVerify copyWith({
    int? id,
    String? deleted_at,
    int? version,
    int? verified,
    String? first_name,
    String? last_name,
    String? email,
    String? phone,
    var countries_id,
    String? token,
    String? ecom_currencies_id,
    String? failed_logins,
    String? failed_login_at,
    String? verified_at,
    String? phone_country_code,
    String? phone_original,
    String? gender,
    String? birthdate,
    String? pin,
    int? forceUpdateProfile,
  }) {
    return UserVerify(
      id: id ?? this.id,
      deleted_at: deleted_at ?? this.deleted_at,
      version: version ?? this.version,
      verified: verified ?? this.verified,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      countries_id: countries_id ?? this.countries_id,
      token: token ?? this.token,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      failed_logins: failed_logins ?? this.failed_logins,
      failed_login_at: failed_login_at ?? this.failed_login_at,
      verified_at: verified_at ?? this.verified_at,
      phone_country_code: phone_country_code ?? this.phone_country_code,
      phone_original: phone_original ?? this.phone_original,
      gender: gender ?? this.gender,
      birthdate: birthdate ?? this.birthdate,
      pin: pin ?? this.pin,
      forceUpdateProfile: forceUpdateProfile ?? this.forceUpdateProfile,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'deleted_at': deleted_at,
      'version': version,
      'verified': verified,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'phone': phone,
      'countries_id': countries_id,
      'token': token,
      'ecom_currencies_id': ecom_currencies_id,
      'failed_logins': failed_logins,
      'failed_login_at': failed_login_at,
      'verified_at': verified_at,
      'phone_country_code': phone_country_code,
      'phone_original': phone_original,
      'gender': gender,
      'birthdate': birthdate,
      'pin': pin,
      'forceUpdateProfile': forceUpdateProfile,
    };
  }

  factory UserVerify.fromMap(Map<String, dynamic> map) {
    return UserVerify(
      id: map['id']?.toInt() ?? 0,
      deleted_at: map['deleted_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
      verified: map['verified']?.toInt() ?? 0,
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      countries_id: map['countries_id'] ?? '',
      token: map['token'] ?? '',
      ecom_currencies_id: jsonEncode(map['ecom_currencies_id']),
      failed_logins: map['failed_logins'] ?? '',
      failed_login_at: map['failed_login_at'] ?? '',
      verified_at: map['verified_at'] ?? '',
      phone_country_code: map['phone_country_code'] ?? '',
      phone_original: map['phone_original'] ?? '',
      gender: map['gender'] ?? '',
      birthdate: map['birthdate'] ?? '',
      pin: map['pin'] ?? '',
      forceUpdateProfile: map['forceUpdateProfile']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserVerify.fromJson(String source) =>
      UserVerify.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserVerify(id: $id, deleted_at: $deleted_at, version: $version, verified: $verified, first_name: $first_name, last_name: $last_name, email: $email, phone: $phone, countries_id: $countries_id, token: $token, ecom_currencies_id: $ecom_currencies_id, failed_logins: $failed_logins, failed_login_at: $failed_login_at, verified_at: $verified_at, phone_country_code: $phone_country_code, phone_original: $phone_original, gender: $gender, birthdate: $birthdate, pin: $pin, forceUpdateProfile: $forceUpdateProfile)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserVerify &&
        other.id == id &&
        other.deleted_at == deleted_at &&
        other.version == version &&
        other.verified == verified &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email &&
        other.phone == phone &&
        other.countries_id == countries_id &&
        other.token == token &&
        other.ecom_currencies_id == ecom_currencies_id &&
        other.failed_logins == failed_logins &&
        other.failed_login_at == failed_login_at &&
        other.verified_at == verified_at &&
        other.phone_country_code == phone_country_code &&
        other.phone_original == phone_original &&
        other.gender == gender &&
        other.birthdate == birthdate &&
        other.pin == pin &&
        other.forceUpdateProfile == forceUpdateProfile;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        deleted_at.hashCode ^
        version.hashCode ^
        verified.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        countries_id.hashCode ^
        token.hashCode ^
        ecom_currencies_id.hashCode ^
        failed_logins.hashCode ^
        failed_login_at.hashCode ^
        verified_at.hashCode ^
        phone_country_code.hashCode ^
        phone_original.hashCode ^
        gender.hashCode ^
        birthdate.hashCode ^
        pin.hashCode ^
        forceUpdateProfile.hashCode;
  }
}
