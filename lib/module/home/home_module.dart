import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/home_routes.dart';
import 'widget/details_widget.dart';
import 'widget/home_widget.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(HomeRoutes.root, child: (_, __) =>  HomeWidget()),
        ChildRoute(HomeRoutes.details, child: (_, __) => const DetailsWidget()),
      ];
}
