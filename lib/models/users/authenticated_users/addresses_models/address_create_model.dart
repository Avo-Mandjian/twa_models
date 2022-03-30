import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'address_model.dart';

class AddressCreate {
  final SuccessAddressCreate success;
  final List<AddressModel> data;
  AddressCreate({
    required this.success,
    this.data = const [],
  });

  AddressCreate copyWith({
    SuccessAddressCreate? success,
    List<AddressModel>? data,
  }) {
    return AddressCreate(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success.toMap(),
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory AddressCreate.fromMap(Map<String, dynamic> map) {
    return AddressCreate(
      success: SuccessAddressCreate.fromMap(map['success']),
      data: List<AddressModel>.from(
          map['data']?.map((x) => AddressModel.fromMap(x)) ?? const [],),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressCreate.fromJson(String source) =>
      AddressCreate.fromMap(json.decode(source));

  @override
  String toString() => 'AddressCreate(success: $success, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddressCreate &&
        other.success == success &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode => success.hashCode ^ data.hashCode;
}

class SuccessAddressCreate {
  final int code;
  final String title;
  final String message;
  final String debugger;
  SuccessAddressCreate({
    this.code = 0,
    this.title = '',
    this.message = '',
    this.debugger = '',
  });

  SuccessAddressCreate copyWith({
    int? code,
    String? title,
    String? message,
    String? debugger,
  }) {
    return SuccessAddressCreate(
      code: code ?? this.code,
      title: title ?? this.title,
      message: message ?? this.message,
      debugger: debugger ?? this.debugger,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'title': title,
      'message': message,
      'debugger': debugger,
    };
  }

  factory SuccessAddressCreate.fromMap(Map<String, dynamic> map) {
    return SuccessAddressCreate(
      code: map['code']?.toInt() ?? 0,
      title: map['title'] ?? '',
      message: map['message'] ?? '',
      debugger: map['debugger'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SuccessAddressCreate.fromJson(String source) =>
      SuccessAddressCreate.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Success(code: $code, title: $title, message: $message, debugger: $debugger)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SuccessAddressCreate &&
        other.code == code &&
        other.title == title &&
        other.message == message &&
        other.debugger == debugger;
  }

  @override
  int get hashCode {
    return code.hashCode ^
        title.hashCode ^
        message.hashCode ^
        debugger.hashCode;
  }
}
