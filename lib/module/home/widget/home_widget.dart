import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/fragment/dev_api_test_fragment.dart';
import 'package:simulator/module/home/fragment/setting_fragment.dart';
import 'package:simulator/module/home/fragment/test_ui_fragment.dart';
import 'package:simulator/module/home/store/app_store.dart';
import 'package:simulator/module/home/widget/biller_category_widget.dart';
import 'package:simulator/module/home/widget/biller_product_widget.dart';
import 'package:simulator/module/home/widget/confirm_widget.dart';
import 'package:simulator/module/home/widget/enquiry_widget.dart';
import 'package:simulator/module/home/widget/menu_widget.dart';

class HomeWidget extends StatelessWidget {
   HomeWidget({Key? key}) : super(key: key);

  final AppStore _appStore = Modular.get<AppStore>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 600) {
      return Scaffold(
        appBar: AppBar(
          title: Observer(
            builder: (context) {
              return  Text(_appStore.indextitle);
            }
          ),
        ),
        body: Row(
          children: [
            SizedBox(
              width: 240,
              child: MenuWidget(),
            ),
            Container(width: 0.5, color: Colors.black),
            Expanded(
              child: Observer(builder: (context) {
                return getFragment();
              }),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Observer(builder: (context) {
            return Text(_appStore.indextitle);
          }),
        ),
        body: Observer(builder: (context) {
          return getFragment();
        }),
        drawer: SizedBox(
          width: 240,
          child: Drawer(child: MenuWidget()),
        ),
      );
    }
  }

  Widget getFragment() {
    switch (_appStore.drawerIndex) {
      case 0:
        return const DevApiTestFragment();
      case 1:
        return const TestUIFragment();
      case 2:
        return SettingFragment();
      default:
        return const DevApiTestFragment();
    }
  }
}
