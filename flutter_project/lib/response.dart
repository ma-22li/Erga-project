// To parse this JSON data, do
//
//     final erqaResponse = erqaResponseFromJson(jsonString);

import 'dart:convert';

ErqaResponse erqaResponseFromJson(String str) => ErqaResponse.fromJson(json.decode(str));

String erqaResponseToJson(ErqaResponse data) => json.encode(data.toJson());

class ErqaResponse {
  ErqaResponse({
    required this.code,
    required this.user,
  });

  int code;
  User user;

  factory ErqaResponse.fromJson(Map<String, dynamic> json) => ErqaResponse(
    code: json["code"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "user": user.toJson(),
  };
}

class User {
  User({
    required this.id,
    required this.full_name,
    required this.email,
    required this.password,
  });

  int id;
  String full_name;
  String email;
  String password;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    full_name: json["full_name"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "full_name": full_name,
    "email": email,
    "password": password,
  };
}
