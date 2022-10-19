import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';
import 'package:simulator/module/home/widget/biller_category_widget.dart';
import 'package:simulator/module/home/widget/biller_product_widget.dart';
import 'package:simulator/module/home/widget/confirm_widget.dart';
import 'package:simulator/module/home/widget/enquiry_widget.dart';
import 'package:simulator/module/home/widget/menu_widget.dart';
import 'package:simulator/utils/color_utils.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 600) {
      // wide screen: menu on the left, content on the right
      return Scaffold(
        appBar: AppBar(
          // 3. add a non-null leading argument if we have a drawer
          // leading: hasDrawer
          //     ? IconButton(
          //         icon: Icon(Icons.menu),
          //         // 4. open the drawer if we have one
          //         onPressed:
          //             hasDrawer ? () => ancestorScaffold!.openDrawer() : null,
          //       )
          //     : null,
          title: const Text("Home"),
          // actions: actions,
        ),
        body: Row(
          children: [
            const SizedBox(
              width: 240,
              child: MenuWidget(),
            ),
            Container(width: 0.5, color: Colors.black),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(children: [
                  const BillerCategoryWidget(),
                  BillerProductWidget(),
                  const EnquiryWidget(),
                  const ConfirmWidget()
                ]),
              ),
            )
          ],
        ),
      );
    } else {
      // narrow screen: show content, menu inside drawer
      return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(children: [
            const BillerCategoryWidget(),
            BillerProductWidget(),
            const EnquiryWidget(),
            const ConfirmWidget()
          ]),
        ),
        drawer: const SizedBox(
          width: 240,
          child: Drawer(child: MenuWidget()),
        ),
      );
    }

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Home"),
    //   ),
    //   body: SingleChildScrollView(
    //     physics: const AlwaysScrollableScrollPhysics(),
    //     child: Column(children: [
    //       const BillerCategoryWidget(),
    //       BillerProductWidget(),
    //       const EnquiryWidget(),
    //       const ConfirmWidget()
    //     ]),
    //   ),
    // );
  }
}
