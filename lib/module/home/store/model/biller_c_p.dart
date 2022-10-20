// To parse this JSON data, do
//
//     final billerProductResponse = billerProductResponseFromJson(jsonString);

import 'dart:convert';

BillerProductResponse billerProductResponseFromJson(String str) =>
    BillerProductResponse.fromJson(json.decode(str));

String billerProductResponseToJson(BillerProductResponse data) =>
    json.encode(data.toJson());

class BillerProductResponse {
  BillerProductResponse({
    this.errorCode,
    this.errorMessage,
    this.billerCategory,
    this.billerCode,
    this.billerName,
    this.billerLogo,
    this.billerCountry,
    this.billerCurrency,
    this.productList,
  });

  String? errorCode;
  String? errorMessage;
  dynamic billerCategory;
  String? billerCode;
  dynamic billerName;
  dynamic billerLogo;
  dynamic billerCountry;
  dynamic billerCurrency;
  List<ProductList>? productList;

  factory BillerProductResponse.fromJson(Map<String, dynamic> json) =>
      BillerProductResponse(
        errorCode: json["ErrorCode"],
        errorMessage: json["ErrorMessage"],
        billerCategory: json["BillerCategory"],
        billerCode: json["BillerCode"],
        billerName: json["BillerName"],
        billerLogo: json["BillerLogo"],
        billerCountry: json["BillerCountry"],
        billerCurrency: json["BillerCurrency"],
        productList: List<ProductList>.from(
            json["ProductList"].map((x) => ProductList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ErrorCode": errorCode,
        "ErrorMessage": errorMessage,
        "BillerCategory": billerCategory,
        "BillerCode": billerCode,
        "BillerName": billerName,
        "BillerLogo": billerLogo,
        "BillerCountry": billerCountry,
        "BillerCurrency": billerCurrency,
        "ProductList": List<dynamic>.from(productList!.map((x) => x.toJson())),
      };
}

class ProductList {
  ProductList({
    this.productCode,
    this.productName,
    this.productAmount,
  });

  String? productCode;
  String? productName;
  String? productAmount;

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        productCode: json["ProductCode"],
        productName: json["ProductName"],
        productAmount: json["ProductAmount"],
      );

  Map<String, dynamic> toJson() => {
        "ProductCode": productCode,
        "ProductName": productName,
        "ProductAmount": productAmount,
      };
}
