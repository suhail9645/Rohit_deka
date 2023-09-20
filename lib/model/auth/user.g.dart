// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String?,
      otp: json['otp'] as String?,
      isVerified: json['isVerified'] as bool?,
      profileImage: json['profileImage'],
      role: json['role'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'otp': instance.otp,
      'isVerified': instance.isVerified,
      'profileImage': instance.profileImage,
      'role': instance.role,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
    };
