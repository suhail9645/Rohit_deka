import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  @JsonKey(name: '_id')
  String? id;
  String? categoryId;
  String? name;
  String? image;
  @JsonKey(name: '__v')
  int? v;

  Category({this.id, this.categoryId, this.name, this.image, this.v});

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
