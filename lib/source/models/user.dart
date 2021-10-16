class User {
  int? id;
  String? email;
  String? password;
  bool verified = false;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({this.id, this.email, this.password, this.verified = false, this.createdAt, this.updatedAt});

  User.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        email = map['email'],
        password = map['password'],
        verified = map['verified'],
        createdAt = DateTime.tryParse(map['createdAt'] ?? ''),
        updatedAt = DateTime.tryParse(map['updatedAt'] ?? '');

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['email'] = email;

    return data;
  }

  @override
  String toString() {
    final String value = 'id: $id, email: $email, password: $password, verified: $verified, createdAt: $createdAt, updatedAt: $updatedAt';
    return value;
  }

  User copyWith({
    int? id,
    String? email,
    String? password,
    bool? verified,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
        verified: verified ?? this.verified,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}
