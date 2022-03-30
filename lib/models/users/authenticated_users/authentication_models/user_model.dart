import 'dart:convert';

class UserModel {
  final int id;
  final String first_name;
  final String last_name;
  final String email;
  final String phone;
  dynamic countries_id;
  final String password;
  final int verified;
  final String extension_image;
  String token;
  final String created_at;
  final String updated_at;
  final int test_user;
  final int version;
  final String verified_at;
  final int locked;
  final int cancelled;
  final String deleted_at;
  final String cms_attributes;
  dynamic ecom_currencies_id;
  final String failed_logins;
  final String failed_login_at;
  final String phone_country_code;
  final String phone_original;
  UserModel({
    this.id = 0,
    this.first_name = '',
    this.last_name = '',
    this.email = '',
    this.phone = '',
    var this.countries_id,
    this.password = '',
    this.verified = 0,
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.token = '',
    this.created_at = '',
    this.updated_at = '',
    this.test_user = 0,
    this.version = 0,
    this.verified_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.deleted_at = '',
    this.cms_attributes = '',
    var this.ecom_currencies_id,
    this.failed_logins = '',
    this.failed_login_at = '',
    this.phone_country_code = '',
    this.phone_original = '',
  });

  UserModel copyWith({
    int? id,
    String? first_name,
    String? last_name,
    String? email,
    String? phone,
    var countries_id,
    String? password,
    int? verified,
    String? extension_image,
    String? token,
    String? created_at,
    String? updated_at,
    int? test_user,
    int? version,
    String? verified_at,
    int? locked,
    int? cancelled,
    String? deleted_at,
    String? cms_attributes,
    var ecom_currencies_id,
    String? failed_logins,
    String? failed_login_at,
    String? phone_country_code,
    String? phone_original,
  }) {
    return UserModel(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      countries_id: countries_id ?? this.countries_id,
      password: password ?? this.password,
      verified: verified ?? this.verified,
      extension_image: extension_image ?? this.extension_image,
      token: token ?? this.token,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      test_user: test_user ?? this.test_user,
      version: version ?? this.version,
      verified_at: verified_at ?? this.verified_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      deleted_at: deleted_at ?? this.deleted_at,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      failed_logins: failed_logins ?? this.failed_logins,
      failed_login_at: failed_login_at ?? this.failed_login_at,
      phone_country_code: phone_country_code ?? this.phone_country_code,
      phone_original: phone_original ?? this.phone_original,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'phone': phone,
      'countries_id': countries_id,
      'password': password,
      'verified': verified,
      'extension_image': extension_image,
      'token': token,
      'created_at': created_at,
      'updated_at': updated_at,
      'test_user': test_user,
      'version': version,
      'verified_at': verified_at,
      'locked': locked,
      'cancelled': cancelled,
      'deleted_at': deleted_at,
      'cms_attributes': cms_attributes,
      'ecom_currencies_id': ecom_currencies_id,
      'failed_logins': failed_logins,
      'failed_login_at': failed_login_at,
      'phone_country_code': phone_country_code,
      'phone_original': phone_original,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? 0,
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      countries_id: map['countries_id'] ?? '',
      password: map['password'] ?? '',
      verified: map['verified'] ?? 0,
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      token: map['token'] ?? '',
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      test_user: map['test_user'] ?? 0,
      version: map['version'] ?? 0,
      verified_at: map['verified_at'] ?? '',
      locked: map['locked'] ?? 0,
      cancelled: map['cancelled'] ?? 0,
      deleted_at: map['deleted_at'] ?? '',
      cms_attributes: map['cms_attributes'] ?? '',
      ecom_currencies_id: map['ecom_currencies_id'] ?? 0,
      failed_logins: map['failed_logins'] ?? '',
      failed_login_at: map['failed_login_at'] ?? '',
      phone_country_code: map['phone_country_code'] ?? '',
      phone_original: map['phone_original'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, first_name: $first_name, last_name: $last_name, email: $email, phone: $phone, countries_id: $countries_id, password: $password, verified: $verified, extension_image: $extension_image, token: $token, created_at: $created_at, updated_at: $updated_at, test_user: $test_user, version: $version, verified_at: $verified_at, locked: $locked, cancelled: $cancelled, deleted_at: $deleted_at, cms_attributes: $cms_attributes, ecom_currencies_id: $ecom_currencies_id, failed_logins: $failed_logins, failed_login_at: $failed_login_at, phone_country_code: $phone_country_code, phone_original: $phone_original)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.id == id &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email &&
        other.phone == phone &&
        other.countries_id == countries_id &&
        other.password == password &&
        other.verified == verified &&
        other.extension_image == extension_image &&
        other.token == token &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.test_user == test_user &&
        other.version == version &&
        other.verified_at == verified_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.deleted_at == deleted_at &&
        other.cms_attributes == cms_attributes &&
        other.ecom_currencies_id == ecom_currencies_id &&
        other.failed_logins == failed_logins &&
        other.failed_login_at == failed_login_at &&
        other.phone_country_code == phone_country_code &&
        other.phone_original == phone_original;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        countries_id.hashCode ^
        password.hashCode ^
        verified.hashCode ^
        extension_image.hashCode ^
        token.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        test_user.hashCode ^
        version.hashCode ^
        verified_at.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        deleted_at.hashCode ^
        cms_attributes.hashCode ^
        ecom_currencies_id.hashCode ^
        failed_logins.hashCode ^
        failed_login_at.hashCode ^
        phone_country_code.hashCode ^
        phone_original.hashCode;
  }
}
