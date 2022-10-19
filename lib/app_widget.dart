import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Smart App',
      theme: ThemeData(useMaterial3: true),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      // builder: (context, child) => ResponsiveWrapper.builder(child,
      //     maxWidth: 1200,
      //     minWidth: 480,
      //     defaultScale: true,
      //     breakpoints: const [
      //       ResponsiveBreakpoint.resize(480, name: MOBILE),
      //       ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //     ],
          // background: Container(color: const Color(0xFFF5F5F5))),
    ); //added by extension
  }
}
