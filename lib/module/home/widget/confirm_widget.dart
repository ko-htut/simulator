import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/store/comfirm_store.dart';
import 'package:simulator/utils/color_utils.dart';

class ConfirmWidget extends StatefulWidget {
  const ConfirmWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmWidget> createState() => _ConfirmWidgetState();
}

class _ConfirmWidgetState extends State<ConfirmWidget> {

  final ComfirmStore _comfirmStore =
      Modular.get<ComfirmStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _item(name: 'Comfirm');
  }

  Widget _item({
    required String name,
  }) {
    return MediaQuery.of(context).size.width > 600
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: _myInputDecoration(
                          hint: 'Enter your Channel Code',
                        ),
                        cursorColor: Colors.pink,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter your Channel Code';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: _myInputDecoration(
                          hint: 'Enter your Biller Code',
                        ),
                        cursorColor: Colors.pink,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter your Biller Code';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _buttom(
                        name: name,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200]),
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Request Data"),
                          JsonViewer(const {
                            "ChannelCode": "AbankMM",
                            "BillerCode": "OoredooEload"
                          }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200]),
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Response Data"),
                          JsonViewer(const {
                            "ErrorCode": "00",
                            "ErrorMessage": "Success",
                            "Detail":
                                "{\"Deno\":\"3000\",\"MobileNumber\":\"09964233241\"}",
                            "ChannelRefId": "KH090003",
                            "BillerRefId": null,
                            "BpaTxnId": "40DA07EA79",
                            "ChannelAmount": 3250.00,
                            "TransactionAmount": 3000
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: _myInputDecoration(
                  hint: 'Enter your Channel Code',
                ),
                cursorColor: Colors.pink,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter your Channel Code';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: _myInputDecoration(
                  hint: 'Enter your Biller Code',
                ),
                cursorColor: Colors.pink,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter your Biller Code';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              _buttom(
                name: name,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[200]),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Request Data"),
                        JsonViewer(const {
                          "ChannelCode": "AbankMM",
                          "BillerCode": "OoredooEload"
                        }),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[200]),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Response Data"),
                        JsonViewer(const {
                          "ErrorCode": "00",
                          "ErrorMessage": "Success",
                          "Detail":
                              "{\"Deno\":\"3000\",\"MobileNumber\":\"09964233241\"}",
                          "ChannelRefId": "KH090003",
                          "BillerRefId": null,
                          "BpaTxnId": "40DA07EA79",
                          "ChannelAmount": 3250.00,
                          "TransactionAmount": 3000
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
  }

  Widget _buttom({
    required String name,
  }) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width > 600
          ? MediaQuery.of(context).size.width / 2
          : double.infinity,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.indigoAccent),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  InputDecoration _myInputDecoration({
    required String hint,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hint,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      contentPadding: const EdgeInsets.only(
        left: 12,
        top: 12,
        bottom: 12,
      ),
      fillColor: ColorUtils.colorD3E9FF,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorUtils.colorD3E9FF,
          width: 1.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorUtils.colorD3E9FF,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorUtils.secondaryColor,
          width: 2.0,
        ),
      ),
    );
  }
}
