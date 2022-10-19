library category;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:simulator/config/serializers.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {
  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  @BuiltValueField(wireName: 'CategoryCode')
  String? get categoryCode;
  @BuiltValueField(wireName: 'CategoryName')
  String? get categoryName;
  String toJson() {
    return json.encode(serializers.serializeWith(Category.serializer, this));
  }

  static Category? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Category.serializer, json.decode(jsonString));
  }

  static Serializer<Category> get serializer => _$categorySerializer;
}
