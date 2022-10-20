// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on _AppStoreBase, Store {
  late final _$drawerIndexAtom =
      Atom(name: '_AppStoreBase.drawerIndex', context: context);

  @override
  int get drawerIndex {
    _$drawerIndexAtom.reportRead();
    return super.drawerIndex;
  }

  @override
  set drawerIndex(int value) {
    _$drawerIndexAtom.reportWrite(value, super.drawerIndex, () {
      super.drawerIndex = value;
    });
  }

  late final _$indextitleAtom =
      Atom(name: '_AppStoreBase.indextitle', context: context);

  @override
  String get indextitle {
    _$indextitleAtom.reportRead();
    return super.indextitle;
  }

  @override
  set indextitle(String value) {
    _$indextitleAtom.reportWrite(value, super.indextitle, () {
      super.indextitle = value;
    });
  }

  late final _$menuListAtom =
      Atom(name: '_AppStoreBase.menuList', context: context);

  @override
  List<String> get menuList {
    _$menuListAtom.reportRead();
    return super.menuList;
  }

  @override
  set menuList(List<String> value) {
    _$menuListAtom.reportWrite(value, super.menuList, () {
      super.menuList = value;
    });
  }

  late final _$_AppStoreBaseActionController =
      ActionController(name: '_AppStoreBase', context: context);

  @override
  void setDrawerIndex({required String title}) {
    final _$actionInfo = _$_AppStoreBaseActionController.startAction(
        name: '_AppStoreBase.setDrawerIndex');
    try {
      return super.setDrawerIndex(title: title);
    } finally {
      _$_AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
drawerIndex: ${drawerIndex},
indextitle: ${indextitle},
menuList: ${menuList}
    ''';
  }
}
