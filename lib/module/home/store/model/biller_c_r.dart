import 'dart:convert';

BillerCategoryResponse billerCategoryResponseFromJson(String str) =>
    BillerCategoryResponse.fromJson(json.decode(str));

String billerCategoryResponseToJson(BillerCategoryResponse data) =>
    json.encode(data.toJson());

class BillerCategoryResponse {
  BillerCategoryResponse({
    this.errorCode,
    this.errorMessage,
    this.categoryList,
  });

  String? errorCode;
  String? errorMessage;
  List<CategoryList>? categoryList;

  factory BillerCategoryResponse.fromJson(Map<String, dynamic> json) =>
      BillerCategoryResponse(
        errorCode: json["ErrorCode"],
        errorMessage: json["ErrorMessage"],
        categoryList: List<CategoryList>.from(
            json["CategoryList"].map((x) => CategoryList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ErrorCode": errorCode,
        "ErrorMessage": errorMessage,
        "CategoryList": List<dynamic>.from(categoryList!.map((x) => x.toJson())),
      };
}

class CategoryList {
  CategoryList({
    this.categoryCode,
    this.categoryName,
  });

  String? categoryCode;
  String? categoryName;

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
        categoryCode: json["CategoryCode"],
        categoryName: json["CategoryName"],
      );

  Map<String, dynamic> toJson() => {
        "CategoryCode": categoryCode,
        "CategoryName": categoryName,
      };
}
