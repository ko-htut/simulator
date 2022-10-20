import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = _AppStoreBase with _$AppStore;

abstract class _AppStoreBase with Store {
  //

  @observable
  int drawerIndex = 0;

  @observable
  String indextitle = "Dev Test";

  @observable
  List<String> menuList = ["Dev Test", "Test UI",  "Setting"];

  @action
  void setDrawerIndex({required String title}) {
   drawerIndex = menuList.indexOf(title);
   indextitle = title;
  }
}
