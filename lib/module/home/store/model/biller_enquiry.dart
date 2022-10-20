// To parse this JSON data, do
//
//     final enquiryResponse = enquiryResponseFromJson(jsonString);

import 'dart:convert';

EnquiryResponse enquiryResponseFromJson(String str) =>
    EnquiryResponse.fromJson(json.decode(str));

String enquiryResponseToJson(EnquiryResponse data) =>
    json.encode(data.toJson());

class EnquiryResponse {
  EnquiryResponse({
    this.errorCode,
    this.errorMessage,
    this.channelAmount,
    this.transactionAmount,
    this.detail,
  });

  String? errorCode;
  String? errorMessage;
  int? channelAmount;
  int? transactionAmount;
  String? detail;

  factory EnquiryResponse.fromJson(Map<String, dynamic> json) =>
      EnquiryResponse(
        errorCode: json["ErrorCode"],
        errorMessage: json["ErrorMessage"],
        channelAmount: json["ChannelAmount"],
        transactionAmount: json["TransactionAmount"],
        detail: json["Detail"],
      );

  Map<String, dynamic> toJson() => {
        "ErrorCode": errorCode,
        "ErrorMessage": errorMessage,
        "ChannelAmount": channelAmount,
        "TransactionAmount": transactionAmount,
        "Detail": detail,
      };
}
