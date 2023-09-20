import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String? id;
  String? otp;
  bool? isVerified;
  dynamic profileImage;
  String? role;
  DateTime? createdAt;
  @JsonKey(name: '__v')
  int? v;

  User({
    this.id,
    this.otp,
    this.isVerified,
    this.profileImage,
    this.role,
    this.createdAt,
    this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
