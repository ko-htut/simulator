import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          _item(name: "Biller Category"),
          _item(name: "Biller Product"),
          _item(name: "Enquiry"),
          _item(name: "Confirm"),
        ]),
      ),
    );
  }

  Widget _item({
    required String name,
  }) {
    return MediaQuery.of(context).size.width > 600
        ? Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    _buttom(
                      name: name,
                    ),
                  ],
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
            children: [
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
          ? MediaQuery.of(context).size.width / 3
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
}
