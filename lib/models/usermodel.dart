// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel(
      {this.email,
      this.mobile,
      this.password,
      this.username,
      this.deliverputname,
      this.imageUrl});

  String? email;
  String? mobile;
  String? password;
  String? username;
  String? deliverputname;
  String? imageUrl;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json["email"] == null ? null : json["email"]!,
        mobile: json["mobile"] == null ? null : json["mobile"]!,
        password: json["password"] == null ? null : json["password"]!,
        username: json["username"] == null ? null : json["username"]!,
        deliverputname:
            json["deliverputname"] == null ? null : json["deliverputname"]!,
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"]!,
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email!,
        "mobile": mobile == null ? null : mobile!,
        "password": password == null ? null : password!,
        "username": username == null ? null : username!,
        "deliverputname": deliverputname == null ? null : deliverputname!,
        "imageUrl": imageUrl == null ? null : imageUrl!,
      };
}
