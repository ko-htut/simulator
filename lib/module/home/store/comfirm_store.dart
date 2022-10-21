import 'dart:convert';
import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:simulator/config/config.dart';
import 'package:simulator/module/home/store/model/biller_c_r.dart';
import 'package:simulator/module/home/store/model/biller_comfirm_respnse.dart';
part 'comfirm_store.g.dart';

class ComfirmStore = _ComfirmStoreBase with _$ComfirmStore;

abstract class _ComfirmStoreBase with Store {
  //
  final Logger logger = Modular.get<Logger>();

  @observable
  bool isDone = false;

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  ComfirmResponse? comfirmResponse;

  @observable
  Map<String, dynamic>? requestBodys;

  @observable
  late String billerCode = '';

  @observable
  late String channelCode = '';

  @observable
  ObservableList<dynamic> loglist = ObservableList<dynamic>();

  @action
  Future<void> getComfirm(
      {required String tchannelCode,
      required String tbillerCode,
      required String deno,
      required String mobileNumber,
      required int transactionAmount,
      required String channelRefId
      }) async {
    var client = http.Client();
    try {
      isLoading = true;
      loglist.clear();
      requestBodys = null;
      comfirmResponse = null;
      logger.i("get Biller Category");
      loglist.add("get Biller Category");
      var requrestboy = {
        "ChannelCode": tchannelCode,
        "BillerCode": tbillerCode,
        "ChannelRefId": channelRefId,
        "TransactionAmount": transactionAmount,
        "Detail": "{\"Deno\":\"$deno\",\"MobileNumber\":\"$mobileNumber\"}"
      };
      requestBodys = requrestboy;
       logger.i(requestBodys);
      var response = await client.post(
        Uri.http(Config.baseOtherUrl, '/BPA/Confirm'),
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
      var data = comfirmResponseFromJson(response.body);
      comfirmResponse = data;
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
