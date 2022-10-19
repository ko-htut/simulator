import 'package:flutter/material.dart';
import 'package:json_tree_viewer/json_tree_viewer.dart';

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
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            _buttom(name: "Biller Category"),
            // const Text("Sent Qureery"),
            //  JsonTreeViewer(
            //   expandedAll: true,
            //   data: {
            //     "ErrorCode": "00",
            //     "ErrorMessage": "Success",
            //     "CategoryList": [
            //       {
            //         "CategoryCode": "topup",
            //         "CategoryName": "Top Up ( don't delete plz )"
            //       }
            //     ]
            //   },
            // ),
            // const Text("Respnse "),
            // const JsonTreeViewer(
            //   data: {
            //     "ErrorCode": "00",
            //     "ErrorMessage": "Success",
            //     "CategoryList": [
            //       {
            //         "CategoryCode": "topup",
            //         "CategoryName": "Top Up ( don't delete plz )"
            //       }
            //     ]
            //   },
            // ),
            // _buttom(name: "Biller Product"),
            // const Text("Sent Qureery"),
            // const JsonTreeViewer(
            //     data: {"channelCode": "AbankMM", "billerCode": "OoredooEload"}),
            // const Text("Respnse "),
            // const JsonTreeViewer(data: {
            //   "ErrorCode": "00",
            //   "ErrorMessage": "Success",
            //   "BillerCategory": null,
            //   "BillerCode": "OoredooEload",
            //   "BillerName": null,
            //   "BillerLogo": null,
            //   "BillerCountry": null,
            //   "BillerCurrency": null,
            //   "ProductList": [
            //     {
            //       "ProductCode": "500",
            //       "ProductName": "500",
            //       "ProductAmount": "500"
            //     },
                
            //   ]
            // }),
            // _buttom(name: "Enquiry"),
            // const Text("Sent Qureery"),
            // const JsonTreeViewer(data: {
            //   "ChannelCode": "AbankMM",
            //   "BillerCode": "OoredooEload",
            //   "Detail": "{\"Deno\":\"1000\",\"MobileNumber\":\"09964233241\"}"
            // }),
            // const Text("Respnse "),
            // const JsonTreeViewer(data: {
            //   "ErrorCode": "00",
            //   "ErrorMessage": "Success.",
            //   "ChannelAmount": 1150.00,
            //   "TransactionAmount": 1000,
            //   "Detail": "{\"Deno\":\"1000\",\"MobileNumber\":\"09964233241\"}"
            // }),
            // _buttom(name: "Confirm"),
            // const Text("Sent Qureery"),
            // const JsonTreeViewer(
            //   data: {
            //     "ChannelCode": "AbankMM",
            //     "BillerCode": "OoredooEload",
            //     "ChannelRefId": "KH090003",
            //     "TransactionAmount": 3000,
            //     "Detail": "{\"Deno\":\"3000\",\"MobileNumber\":\"09964233241\"}"
            //   },
            // ),
            // const Text("Respnse "),
            // const JsonTreeViewer(data: {
            //   "ErrorCode": "00",
            //   "ErrorMessage": "Success",
            //   "Detail": "{\"Deno\":\"3000\",\"MobileNumber\":\"09964233241\"}",
            //   "ChannelRefId": "KH090003",
            //   "BillerRefId": null,
            //   "BpaTxnId": "40DA07EA79",
            //   "ChannelAmount": 3250.00,
            //   "TransactionAmount": 3000
            // }),
          ],
        ),
      ),
    );
  }

  Widget _buttom({required String name}) {
    return Container(
      height: 65,
      width: double.infinity,
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
