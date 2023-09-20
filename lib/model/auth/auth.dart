import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'auth.g.dart';

@JsonSerializable()
class AuthModel {
  String? message;
  User? user;

  AuthModel({this.message, this.user});

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
