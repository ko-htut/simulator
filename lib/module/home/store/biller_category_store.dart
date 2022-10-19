import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:simulator/config/config.dart';
// import 'package:simulator/models/response/biller_category_response.dart';
import 'package:simulator/module/home/respositories/home_repo.dart';
import 'package:http/http.dart' as http;
import 'package:simulator/module/home/store/model/biller_c_r.dart';

part 'biller_category_store.g.dart';

class BillerCategoryStore = _BillerCategoryStoreBase with _$BillerCategoryStore;

abstract class _BillerCategoryStoreBase with Store {
  //

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  BillerCategoryResponse? billerCategoryResponse;

  @observable
  late String billerCode = '';

  @observable
  late String channelCode = '';

  @observable
  ObservableList<dynamic> loglist = ObservableList<dynamic>();

  @action
  Future<void> getBillerCategory(
      {required String tchannelCode, required String tbillerCode}) async {
    var client = http.Client();
    try {
      isLoading = true;
      var response = await client.post(
        Uri.https("43.205.118.250:8080", '/BPA/GetBillerCategory'),
        body: {"ChannelCode": "AbankMM", "BillerCode": "OoredooEload"},
        headers: {
          HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        },
      );
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      var data = billerCategoryResponseFromJson(response.body);
      billerCategoryResponse = data;
      isLoading = false;
      var uri = Uri.parse(decodedResponse['uri'] as String);
      debugPrint(data.toString());
      debugPrint(uri.toString());
    } on SocketException {
      isLoading = false;
      errorMessage = "Internet May Not Available";
    } catch (e) {
      isLoading = false;
      debugPrint('Error is ${e.toString()}');
      errorMessage = e.toString();
    }
  }
}
