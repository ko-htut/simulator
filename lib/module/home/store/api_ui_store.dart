import 'package:mobx/mobx.dart';

part 'api_ui_store.g.dart';

class ApiUIStore = _ApiUIStoreBase with _$ApiUIStore;

abstract class _ApiUIStoreBase with Store {


  @observable
  int uiState = 0;

  @observable
  String indexBtntitle = "Get Biller Category";

  @observable
  List<String> btnTitle = ["Get Biller Category", "Enquiry", "Comfirm"];

  @action
  void nextIndex() {
    uiState = uiState + 1;
    indexBtntitle = btnTitle[uiState];
  }

  @action
  void resetIndex() {
    uiState = 0;
    indexBtntitle = btnTitle[uiState];
  }

  
}
