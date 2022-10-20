// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biller_product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BillerProductStore on _BillerProductStoreBase, Store {
  late final _$isDoneAtom =
      Atom(name: '_BillerProductStoreBase.isDone', context: context);

  @override
  bool get isDone {
    _$isDoneAtom.reportRead();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.reportWrite(value, super.isDone, () {
      super.isDone = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_BillerProductStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_BillerProductStoreBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$billerProductResponseAtom = Atom(
      name: '_BillerProductStoreBase.billerProductResponse', context: context);

  @override
  BillerProductResponse? get billerProductResponse {
    _$billerProductResponseAtom.reportRead();
    return super.billerProductResponse;
  }

  @override
  set billerProductResponse(BillerProductResponse? value) {
    _$billerProductResponseAtom.reportWrite(value, super.billerProductResponse,
        () {
      super.billerProductResponse = value;
    });
  }

  late final _$requestBodysAtom =
      Atom(name: '_BillerProductStoreBase.requestBodys', context: context);

  @override
  Map<String, String>? get requestBodys {
    _$requestBodysAtom.reportRead();
    return super.requestBodys;
  }

  @override
  set requestBodys(Map<String, String>? value) {
    _$requestBodysAtom.reportWrite(value, super.requestBodys, () {
      super.requestBodys = value;
    });
  }

  late final _$billerCodeAtom =
      Atom(name: '_BillerProductStoreBase.billerCode', context: context);

  @override
  String get billerCode {
    _$billerCodeAtom.reportRead();
    return super.billerCode;
  }

  @override
  set billerCode(String value) {
    _$billerCodeAtom.reportWrite(value, super.billerCode, () {
      super.billerCode = value;
    });
  }

  late final _$channelCodeAtom =
      Atom(name: '_BillerProductStoreBase.channelCode', context: context);

  @override
  String get channelCode {
    _$channelCodeAtom.reportRead();
    return super.channelCode;
  }

  @override
  set channelCode(String value) {
    _$channelCodeAtom.reportWrite(value, super.channelCode, () {
      super.channelCode = value;
    });
  }

  late final _$loglistAtom =
      Atom(name: '_BillerProductStoreBase.loglist', context: context);

  @override
  ObservableList<dynamic> get loglist {
    _$loglistAtom.reportRead();
    return super.loglist;
  }

  @override
  set loglist(ObservableList<dynamic> value) {
    _$loglistAtom.reportWrite(value, super.loglist, () {
      super.loglist = value;
    });
  }

  late final _$getBillerProductAsyncAction =
      AsyncAction('_BillerProductStoreBase.getBillerProduct', context: context);

  @override
  Future<void> getBillerProduct(
      {required String tchannelCode, required String tbillerCode}) {
    return _$getBillerProductAsyncAction.run(() => super.getBillerProduct(
        tchannelCode: tchannelCode, tbillerCode: tbillerCode));
  }

  @override
  String toString() {
    return '''
isDone: ${isDone},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
billerProductResponse: ${billerProductResponse},
requestBodys: ${requestBodys},
billerCode: ${billerCode},
channelCode: ${channelCode},
loglist: ${loglist}
    ''';
  }
}
