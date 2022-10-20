import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:simulator/clients/api_clients.dart';
import 'package:simulator/module/home/respositories/home_repo_impl.dart';
import 'package:simulator/module/home/store/app_store.dart';
import 'package:simulator/module/home/store/biller_category_store.dart';
import 'package:simulator/module/home/store/biller_product_store.dart';
import 'package:simulator/module/home/store/comfirm_store.dart';
import 'package:simulator/module/home/store/enquiry_store.dart';
import 'package:simulator/services/api_service.dart';

import 'app_routes.dart';
import 'module/home/home_module.dart';
import 'module/not_found_widget.dart';
import 'module/splash_widget.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Logger(printer: PrettyPrinter(methodCount: 0))),
        Bind((i) => APIClient()),
        Bind((i) => APIService.create(i.get<APIClient>())),
        Bind((i) => AppStore()),
        Bind((i) => BillerCategoryStore()),
        Bind((i) => BillerProductStore()),
        Bind((i) => ComfirmStore()),
        Bind((i) => EnquiryStore()),
        Bind((i) => HomeRepositoryImpl.instance),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.root,
            child: (context, args) => const SplashWiget()),
        ModuleRoute(AppRoutes.home, module: HomeModule(), guards: [
          // AuthGuard(),
        ]),
        ModuleRoute(AppRoutes.auth, module: HomeModule()),
        WildcardRoute(child: (context, args) => const NotFoundWidget()),
      ];
}
