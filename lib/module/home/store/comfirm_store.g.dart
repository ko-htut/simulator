// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comfirm_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ComfirmStore on _ComfirmStoreBase, Store {
  late final _$isDoneAtom =
      Atom(name: '_ComfirmStoreBase.isDone', context: context);

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
      Atom(name: '_ComfirmStoreBase.isLoading', context: context);

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
      Atom(name: '_ComfirmStoreBase.errorMessage', context: context);

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

  late final _$comfirmResponseAtom =
      Atom(name: '_ComfirmStoreBase.comfirmResponse', context: context);

  @override
  ComfirmResponse? get comfirmResponse {
    _$comfirmResponseAtom.reportRead();
    return super.comfirmResponse;
  }

  @override
  set comfirmResponse(ComfirmResponse? value) {
    _$comfirmResponseAtom.reportWrite(value, super.comfirmResponse, () {
      super.comfirmResponse = value;
    });
  }

  late final _$requestBodysAtom =
      Atom(name: '_ComfirmStoreBase.requestBodys', context: context);

  @override
  Map<String, dynamic>? get requestBodys {
    _$requestBodysAtom.reportRead();
    return super.requestBodys;
  }

  @override
  set requestBodys(Map<String, dynamic>? value) {
    _$requestBodysAtom.reportWrite(value, super.requestBodys, () {
      super.requestBodys = value;
    });
  }

  late final _$billerCodeAtom =
      Atom(name: '_ComfirmStoreBase.billerCode', context: context);

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
      Atom(name: '_ComfirmStoreBase.channelCode', context: context);

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
      Atom(name: '_ComfirmStoreBase.loglist', context: context);

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

  late final _$getComfirmAsyncAction =
      AsyncAction('_ComfirmStoreBase.getComfirm', context: context);

  @override
  Future<void> getComfirm(
      {required String tchannelCode,
      required String tbillerCode,
      required String deno,
      required String mobileNumber,
      required int transactionAmount,
      required String channelRefId}) {
    return _$getComfirmAsyncAction.run(() => super.getComfirm(
        tchannelCode: tchannelCode,
        tbillerCode: tbillerCode,
        deno: deno,
        mobileNumber: mobileNumber,
        transactionAmount: transactionAmount,
        channelRefId: channelRefId));
  }

  @override
  String toString() {
    return '''
isDone: ${isDone},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
comfirmResponse: ${comfirmResponse},
requestBodys: ${requestBodys},
billerCode: ${billerCode},
channelCode: ${channelCode},
loglist: ${loglist}
    ''';
  }
}
