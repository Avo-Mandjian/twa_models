import 'dart:convert';

class DeliverySchedule {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final Cms_attributes cms_attributes;
  final String seo_attributes;
  final String label;
  final int country_id;
  final String max_delivery_date;
  final List<Monday> monday;
  final List<Tuesday> tuesday;
  final List<Wednesday> wednesday;
  final List<Thursday> thursday;
  final List<Friday> friday;
  final List<Saturday> saturday;
  final List<Sunday> sunday;
  DeliverySchedule({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    required this.cms_attributes,
    this.seo_attributes = '',
    this.label = '',
    this.country_id = 0,
    this.max_delivery_date = '',
    this.monday = const [],
    this.tuesday = const [],
    this.wednesday = const [],
    this.thursday = const [],
    this.friday = const [],
    this.saturday = const [],
    this.sunday = const [],
  });

  DeliverySchedule copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    Cms_attributes? cms_attributes,
    String? seo_attributes,
    String? label,
    int? country_id,
    String? max_delivery_date,
    List<Monday>? monday,
    List<Tuesday>? tuesday,
    List<Wednesday>? wednesday,
    List<Thursday>? thursday,
    List<Friday>? friday,
    List<Saturday>? saturday,
    List<Sunday>? sunday,
  }) {
    return DeliverySchedule(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      label: label ?? this.label,
      country_id: country_id ?? this.country_id,
      max_delivery_date: max_delivery_date ?? this.max_delivery_date,
      monday: monday ?? this.monday,
      tuesday: tuesday ?? this.tuesday,
      wednesday: wednesday ?? this.wednesday,
      thursday: thursday ?? this.thursday,
      friday: friday ?? this.friday,
      saturday: saturday ?? this.saturday,
      sunday: sunday ?? this.sunday,
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
      'cms_attributes': cms_attributes.toMap(),
      'seo_attributes': seo_attributes,
      'label': label,
      'country_id': country_id,
      'max_delivery_date': max_delivery_date,
      'monday': monday.map((x) => x.toMap()).toList(),
      'tuesday': tuesday.map((x) => x.toMap()).toList(),
      'wednesday': wednesday.map((x) => x.toMap()).toList(),
      'thursday': thursday.map((x) => x.toMap()).toList(),
      'friday': friday.map((x) => x.toMap()).toList(),
      'saturday': saturday.map((x) => x.toMap()).toList(),
      'sunday': sunday.map((x) => x.toMap()).toList(),
    };
  }

  factory DeliverySchedule.fromMap(Map<String, dynamic> map) {
    return DeliverySchedule(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      cms_attributes: Cms_attributes.fromMap(map['cms_attributes'] ?? {}),
      seo_attributes: map['seo_attributes'] ?? '',
      label: map['label'] ?? '',
      country_id: map['country_id']?.toInt() ?? 0,
      max_delivery_date: map['max_delivery_date'] ?? '',
      monday: List<Monday>.from(map['monday']?.map((x) => Monday.fromMap(x))),
      tuesday:
          List<Tuesday>.from(map['tuesday']?.map((x) => Tuesday.fromMap(x))),
      wednesday: List<Wednesday>.from(
          map['wednesday']?.map((x) => Wednesday.fromMap(x))),
      thursday:
          List<Thursday>.from(map['thursday']?.map((x) => Thursday.fromMap(x))),
      friday: List<Friday>.from(map['friday']?.map((x) => Friday.fromMap(x))),
      saturday:
          List<Saturday>.from(map['saturday']?.map((x) => Saturday.fromMap(x))),
      sunday: List<Sunday>.from(map['sunday']?.map((x) => Sunday.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory DeliverySchedule.fromJson(String source) =>
      DeliverySchedule.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DeliverySchedule(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, cms_attributes: $cms_attributes, seo_attributes: $seo_attributes, label: $label, country_id: $country_id, max_delivery_date: $max_delivery_date, monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }
}

class Cms_attributes {
  final String created_at;
  final String updated_at;
  final int version;
  Cms_attributes({
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  Cms_attributes copyWith({
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return Cms_attributes(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created_at': created_at,
      'updated_at': updated_at,
      'version': version,
    };
  }

  factory Cms_attributes.fromMap(Map<String, dynamic> map) {
    return Cms_attributes(
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributes.fromJson(String source) =>
      Cms_attributes.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributes(created_at: $created_at, updated_at: $updated_at, version: $version)';
}

class Monday {
  final String state;
  final String start_time;
  final String end_time;
  final String delivery_status;
  Monday({
    this.state = '',
    this.start_time = '',
    this.end_time = '',
    this.delivery_status = '',
  });

  Monday copyWith({
    String? state,
    String? start_time,
    String? end_time,
    String? delivery_status,
  }) {
    return Monday(
      state: state ?? this.state,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'start_time': start_time,
      'end_time': end_time,
      'delivery_status': delivery_status,
    };
  }

  factory Monday.fromMap(Map<String, dynamic> map) {
    return Monday(
      state: map['state'] ?? '',
      start_time: map['start_time'] ?? '',
      end_time: map['end_time'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Monday.fromJson(String source) => Monday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Monday(state: $state, start_time: $start_time, end_time: $end_time, delivery_status: $delivery_status)';
  }
}

class Tuesday {
  final String state;
  final String start_time;
  final String end_time;
  final String delivery_status;
  Tuesday({
    this.state = '',
    this.start_time = '',
    this.end_time = '',
    this.delivery_status = '',
  });

  Tuesday copyWith({
    String? state,
    String? start_time,
    String? end_time,
    String? delivery_status,
  }) {
    return Tuesday(
      state: state ?? this.state,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'start_time': start_time,
      'end_time': end_time,
      'delivery_status': delivery_status,
    };
  }

  factory Tuesday.fromMap(Map<String, dynamic> map) {
    return Tuesday(
      state: map['state'] ?? '',
      start_time: map['start_time'] ?? '',
      end_time: map['end_time'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Tuesday.fromJson(String source) =>
      Tuesday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Tuesday(state: $state, start_time: $start_time, end_time: $end_time, delivery_status: $delivery_status)';
  }
}

class Wednesday {
  final String state;
  final String start_time;
  final String end_time;
  final String delivery_status;
  Wednesday({
    this.state = '',
    this.start_time = '',
    this.end_time = '',
    this.delivery_status = '',
  });

  Wednesday copyWith({
    String? state,
    String? start_time,
    String? end_time,
    String? delivery_status,
  }) {
    return Wednesday(
      state: state ?? this.state,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'start_time': start_time,
      'end_time': end_time,
      'delivery_status': delivery_status,
    };
  }

  factory Wednesday.fromMap(Map<String, dynamic> map) {
    return Wednesday(
      state: map['state'] ?? '',
      start_time: map['start_time'] ?? '',
      end_time: map['end_time'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Wednesday.fromJson(String source) =>
      Wednesday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Wednesday(state: $state, start_time: $start_time, end_time: $end_time, delivery_status: $delivery_status)';
  }
}

class Thursday {
  final String state;
  final String start_time;
  final String end_time;
  final String delivery_status;
  Thursday({
    this.state = '',
    this.start_time = '',
    this.end_time = '',
    this.delivery_status = '',
  });

  Thursday copyWith({
    String? state,
    String? start_time,
    String? end_time,
    String? delivery_status,
  }) {
    return Thursday(
      state: state ?? this.state,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'start_time': start_time,
      'end_time': end_time,
      'delivery_status': delivery_status,
    };
  }

  factory Thursday.fromMap(Map<String, dynamic> map) {
    return Thursday(
      state: map['state'] ?? '',
      start_time: map['start_time'] ?? '',
      end_time: map['end_time'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Thursday.fromJson(String source) =>
      Thursday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Thursday(state: $state, start_time: $start_time, end_time: $end_time, delivery_status: $delivery_status)';
  }
}

class Friday {
  final String state;
  final String start_time;
  final String end_time;
  final String delivery_status;
  Friday({
    this.state = '',
    this.start_time = '',
    this.end_time = '',
    this.delivery_status = '',
  });

  Friday copyWith({
    String? state,
    String? start_time,
    String? end_time,
    String? delivery_status,
  }) {
    return Friday(
      state: state ?? this.state,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'start_time': start_time,
      'end_time': end_time,
      'delivery_status': delivery_status,
    };
  }

  factory Friday.fromMap(Map<String, dynamic> map) {
    return Friday(
      state: map['state'] ?? '',
      start_time: map['start_time'] ?? '',
      end_time: map['end_time'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Friday.fromJson(String source) => Friday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Friday(state: $state, start_time: $start_time, end_time: $end_time, delivery_status: $delivery_status)';
  }
}

class Saturday {
  final String state;
  final String start_time;
  final String end_time;
  final String delivery_status;
  Saturday({
    this.state = '',
    this.start_time = '',
    this.end_time = '',
    this.delivery_status = '',
  });

  Saturday copyWith({
    String? state,
    String? start_time,
    String? end_time,
    String? delivery_status,
  }) {
    return Saturday(
      state: state ?? this.state,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'start_time': start_time,
      'end_time': end_time,
      'delivery_status': delivery_status,
    };
  }

  factory Saturday.fromMap(Map<String, dynamic> map) {
    return Saturday(
      state: map['state'] ?? '',
      start_time: map['start_time'] ?? '',
      end_time: map['end_time'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Saturday.fromJson(String source) =>
      Saturday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Saturday(state: $state, start_time: $start_time, end_time: $end_time, delivery_status: $delivery_status)';
  }
}

class Sunday {
  final String state;
  final String delivery_status;
  Sunday({
    this.state = '',
    this.delivery_status = '',
  });

  Sunday copyWith({
    String? state,
    String? delivery_status,
  }) {
    return Sunday(
      state: state ?? this.state,
      delivery_status: delivery_status ?? this.delivery_status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'delivery_status': delivery_status,
    };
  }

  factory Sunday.fromMap(Map<String, dynamic> map) {
    return Sunday(
      state: map['state'] ?? '',
      delivery_status: map['delivery_status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Sunday.fromJson(String source) => Sunday.fromMap(json.decode(source));

  @override
  String toString() =>
      'Sunday(state: $state, delivery_status: $delivery_status)';
}
