// To parse this JSON data, do
//
//     final comfirmResponse = comfirmResponseFromJson(jsonString);

import 'dart:convert';

ComfirmResponse comfirmResponseFromJson(String str) =>
    ComfirmResponse.fromJson(json.decode(str));

String comfirmResponseToJson(ComfirmResponse data) =>
    json.encode(data.toJson());

class ComfirmResponse {
  ComfirmResponse({
    this.errorCode,
    this.errorMessage,
    this.detail,
    this.channelRefId,
    this.billerRefId,
    this.bpaTxnId,
    this.channelAmount,
    this.transactionAmount,
  });

  String? errorCode;
  String? errorMessage;
  String? detail;
  String? channelRefId;
  dynamic billerRefId;
  String? bpaTxnId;
  int? channelAmount;
  int? transactionAmount;

  factory ComfirmResponse.fromJson(Map<String, dynamic> json) =>
      ComfirmResponse(
        errorCode: json["ErrorCode"],
        errorMessage: json["ErrorMessage"],
        detail: json["Detail"],
        channelRefId: json["ChannelRefId"],
        billerRefId: json["BillerRefId"],
        bpaTxnId: json["BpaTxnId"],
        channelAmount: json["ChannelAmount"],
        transactionAmount: json["TransactionAmount"],
      );

  Map<String, dynamic> toJson() => {
        "ErrorCode": errorCode,
        "ErrorMessage": errorMessage,
        "Detail": detail,
        "ChannelRefId": channelRefId,
        "BillerRefId": billerRefId,
        "BpaTxnId": bpaTxnId,
        "ChannelAmount": channelAmount,
        "TransactionAmount": transactionAmount,
      };
}
