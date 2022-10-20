import 'dart:convert';
import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';
import 'package:simulator/config/config.dart';
import 'package:simulator/module/home/store/model/biller_c_r.dart';
import 'package:http/http.dart' as http;
import 'package:simulator/module/home/store/model/biller_enquiry.dart';

part 'enquiry_store.g.dart';

class EnquiryStore = _EnquiryStoreBase with _$EnquiryStore;

abstract class _EnquiryStoreBase with Store {
  //
  final Logger logger = Modular.get<Logger>();

  @observable
  bool isDone = false;

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  EnquiryResponse? enquiryResponse;

  @observable
  Map<String, String>? requestBodys;

  @observable
  late String billerCode = '';

  @observable
  late String channelCode = '';

  @observable
  ObservableList<dynamic> loglist = ObservableList<dynamic>();

  @action
  Future<void> getEnquiry(
      {required String tchannelCode,
      required String tbillerCode,
      required String deno,
      required String mobileNumber}) async {
    var client = http.Client();
    try {
      isLoading = true;
      loglist.clear();
      requestBodys = null;
      enquiryResponse = null;
      logger.i("get Biller Category");
      loglist.add("get Biller Category");
      var requrestboy = {
        "ChannelCode": tchannelCode,
        "BillerCode": tbillerCode,
        "Detail": "{\"Deno\":\"$deno\",\"MobileNumber\":\"$mobileNumber\"}"
      };
      requestBodys = requrestboy;
      var response = await client.post(
        Uri.http(Config.baseOtherUrl, '/BPA/Enquiry'),
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
      var data = enquiryResponseFromJson(response.body);
      enquiryResponse = data;
      isLoading = false;
      isDone = true;
      logger.i(loglist);
    } on SocketException {
      isLoading = false;
      errorMessage = "Internet May Not Available";
    } catch (e) {
      isLoading = false;
      logger.e('Error is ${e.toString()}');
      errorMessage = e.toString();
    }
  }
}
