// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biller_category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BillerCategoryStore on _BillerCategoryStoreBase, Store {
  late final _$isDoneAtom =
      Atom(name: '_BillerCategoryStoreBase.isDone', context: context);

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
      Atom(name: '_BillerCategoryStoreBase.isLoading', context: context);

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
      Atom(name: '_BillerCategoryStoreBase.errorMessage', context: context);

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

  late final _$billerCategoryResponseAtom = Atom(
      name: '_BillerCategoryStoreBase.billerCategoryResponse',
      context: context);

  @override
  BillerCategoryResponse? get billerCategoryResponse {
    _$billerCategoryResponseAtom.reportRead();
    return super.billerCategoryResponse;
  }

  @override
  set billerCategoryResponse(BillerCategoryResponse? value) {
    _$billerCategoryResponseAtom
        .reportWrite(value, super.billerCategoryResponse, () {
      super.billerCategoryResponse = value;
    });
  }

  late final _$requestBodysAtom =
      Atom(name: '_BillerCategoryStoreBase.requestBodys', context: context);

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
      Atom(name: '_BillerCategoryStoreBase.billerCode', context: context);

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
      Atom(name: '_BillerCategoryStoreBase.channelCode', context: context);

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
      Atom(name: '_BillerCategoryStoreBase.loglist', context: context);

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

  late final _$getBillerCategoryAsyncAction = AsyncAction(
      '_BillerCategoryStoreBase.getBillerCategory',
      context: context);

  @override
  Future<void> getBillerCategory(
      {required String tchannelCode, required String tbillerCode}) {
    return _$getBillerCategoryAsyncAction.run(() => super.getBillerCategory(
        tchannelCode: tchannelCode, tbillerCode: tbillerCode));
  }

  @override
  String toString() {
    return '''
isDone: ${isDone},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
billerCategoryResponse: ${billerCategoryResponse},
requestBodys: ${requestBodys},
billerCode: ${billerCode},
channelCode: ${channelCode},
loglist: ${loglist}
    ''';
  }
}
