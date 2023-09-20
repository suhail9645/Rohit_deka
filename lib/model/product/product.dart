import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? unit;
  int? quantity;
  int? price;
  String? description;
  List<String>? images;
  String? category;
  int? stock;
  List<dynamic>? details;
  int? numOfReviews;
  String? brand;
  String? createdByRole;
  String? createdBy;
  List<dynamic>? reviews;
  DateTime? createdAt;
  @JsonKey(name: '__v')
  int? v;

  Product({
    this.id,
    this.name,
    this.unit,
    this.quantity,
    this.price,
    this.description,
    this.images,
    this.category,
    this.stock,
    this.details,
    this.numOfReviews,
    this.brand,
    this.createdByRole,
    this.createdBy,
    this.reviews,
    this.createdAt,
    this.v,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
