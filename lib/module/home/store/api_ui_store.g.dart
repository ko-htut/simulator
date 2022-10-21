// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ui_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ApiUIStore on _ApiUIStoreBase, Store {
  late final _$uiStateAtom =
      Atom(name: '_ApiUIStoreBase.uiState', context: context);

  @override
  int get uiState {
    _$uiStateAtom.reportRead();
    return super.uiState;
  }

  @override
  set uiState(int value) {
    _$uiStateAtom.reportWrite(value, super.uiState, () {
      super.uiState = value;
    });
  }

  late final _$indexBtntitleAtom =
      Atom(name: '_ApiUIStoreBase.indexBtntitle', context: context);

  @override
  String get indexBtntitle {
    _$indexBtntitleAtom.reportRead();
    return super.indexBtntitle;
  }

  @override
  set indexBtntitle(String value) {
    _$indexBtntitleAtom.reportWrite(value, super.indexBtntitle, () {
      super.indexBtntitle = value;
    });
  }

  late final _$btnTitleAtom =
      Atom(name: '_ApiUIStoreBase.btnTitle', context: context);

  @override
  List<String> get btnTitle {
    _$btnTitleAtom.reportRead();
    return super.btnTitle;
  }

  @override
  set btnTitle(List<String> value) {
    _$btnTitleAtom.reportWrite(value, super.btnTitle, () {
      super.btnTitle = value;
    });
  }

  late final _$_ApiUIStoreBaseActionController =
      ActionController(name: '_ApiUIStoreBase', context: context);

  @override
  void nextIndex() {
    final _$actionInfo = _$_ApiUIStoreBaseActionController.startAction(
        name: '_ApiUIStoreBase.nextIndex');
    try {
      return super.nextIndex();
    } finally {
      _$_ApiUIStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
uiState: ${uiState},
indexBtntitle: ${indexBtntitle},
btnTitle: ${btnTitle}
    ''';
  }
}
