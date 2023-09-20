// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      quantity: json['quantity'] as int?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: json['category'] as String?,
      stock: json['stock'] as int?,
      details: json['details'] as List<dynamic>?,
      numOfReviews: json['numOfReviews'] as int?,
      brand: json['brand'] as String?,
      createdByRole: json['createdByRole'] as String?,
      createdBy: json['createdBy'] as String?,
      reviews: json['reviews'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'quantity': instance.quantity,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'category': instance.category,
      'stock': instance.stock,
      'details': instance.details,
      'numOfReviews': instance.numOfReviews,
      'brand': instance.brand,
      'createdByRole': instance.createdByRole,
      'createdBy': instance.createdBy,
      'reviews': instance.reviews,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
    };
