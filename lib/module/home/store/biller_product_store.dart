import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';
import 'package:simulator/config/config.dart';
import 'package:simulator/module/home/store/model/biller_c_p.dart';
import 'package:simulator/module/home/store/model/biller_c_r.dart';
import 'package:http/http.dart' as http;

part 'biller_product_store.g.dart';

class BillerProductStore = _BillerProductStoreBase with _$BillerProductStore;

abstract class _BillerProductStoreBase with Store {
  //

  final Logger logger = Modular.get<Logger>();

  @observable
  bool isDone = false;

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  BillerProductResponse? billerProductResponse;

  @observable
  Map<String, String>? requestBodys;

  @observable
  late String billerCode = '';

  @observable
  late String channelCode = '';

  @observable
  ObservableList<dynamic> loglist = ObservableList<dynamic>();

  @action
  Future<void> getBillerProduct(
      {required String tchannelCode, required String tbillerCode}) async {
    var client = http.Client();
    try {
      isLoading = true;
      loglist.clear();
      requestBodys = null;
      billerProductResponse = null;
      logger.i("get Biller Category");
      loglist.add("get Biller Category");
      var requrestboy = {
        "ChannelCode": tchannelCode,
        "BillerCode": tbillerCode
      };
      requestBodys = requrestboy;
      var response = await client.post(
        Uri.http(Config.baseOtherUrl, '/BPA/GetBillerProduct'),
        body: json.encode(requrestboy),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
      logger.i(response.request.toString());
      loglist.add(response.request.toString());
      logger.i(response.request!.headers.toString());
      loglist.add(response.request!.headers.toString());
      logger.i(response.body.toString());
      loglist.add(response.request!.headers.toString());
      var data = billerProductResponseFromJson(response.body);
      billerProductResponse = data;
      isLoading = false;
      isDone = true;
      logger.i(loglist);
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
