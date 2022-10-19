library biller_category_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:simulator/config/serializers.dart';
import 'package:simulator/models/data/category.dart';

part 'biller_category_response.g.dart';

abstract class BillerCategoryResponse
    implements Built<BillerCategoryResponse, BillerCategoryResponseBuilder> {
  BillerCategoryResponse._();

  factory BillerCategoryResponse([updates(BillerCategoryResponseBuilder b)]) =
      _$BillerCategoryResponse;

  @BuiltValueField(wireName: 'ErrorCode')
  String? get errorCode;
  @BuiltValueField(wireName: 'ErrorMessage')
  String? get errorMessage;
  @BuiltValueField(wireName: 'CategoryList')
  BuiltList<Category> get categoryList;
  String toJson() {
    return json.encode(
        serializers.serializeWith(BillerCategoryResponse.serializer, this));
  }

  static BillerCategoryResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BillerCategoryResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BillerCategoryResponse> get serializer =>
      _$billerCategoryResponseSerializer;
}
