// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'image': instance.image,
      '__v': instance.v,
    };
