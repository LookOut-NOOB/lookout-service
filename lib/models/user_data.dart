class UserData {
  final String? uid;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;

  UserData({
    this.uid,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
  });

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      uid: map["id"],
      firstName: map["firstName"],
      lastName: map["lastName"],
      email: map["email"],
      phone: map['phone'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": uid,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "phone": phone,
    };
  }
}
