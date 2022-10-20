// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enquiry_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EnquiryStore on _EnquiryStoreBase, Store {
  late final _$isDoneAtom =
      Atom(name: '_EnquiryStoreBase.isDone', context: context);

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
      Atom(name: '_EnquiryStoreBase.isLoading', context: context);

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
      Atom(name: '_EnquiryStoreBase.errorMessage', context: context);

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

  late final _$enquiryResponseAtom =
      Atom(name: '_EnquiryStoreBase.enquiryResponse', context: context);

  @override
  EnquiryResponse? get enquiryResponse {
    _$enquiryResponseAtom.reportRead();
    return super.enquiryResponse;
  }

  @override
  set enquiryResponse(EnquiryResponse? value) {
    _$enquiryResponseAtom.reportWrite(value, super.enquiryResponse, () {
      super.enquiryResponse = value;
    });
  }

  late final _$requestBodysAtom =
      Atom(name: '_EnquiryStoreBase.requestBodys', context: context);

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
      Atom(name: '_EnquiryStoreBase.billerCode', context: context);

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
      Atom(name: '_EnquiryStoreBase.channelCode', context: context);

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
      Atom(name: '_EnquiryStoreBase.loglist', context: context);

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

  late final _$getEnquiryAsyncAction =
      AsyncAction('_EnquiryStoreBase.getEnquiry', context: context);

  @override
  Future<void> getEnquiry(
      {required String tchannelCode,
      required String tbillerCode,
      required String deno,
      required String mobileNumber}) {
    return _$getEnquiryAsyncAction.run(() => super.getEnquiry(
        tchannelCode: tchannelCode,
        tbillerCode: tbillerCode,
        deno: deno,
        mobileNumber: mobileNumber));
  }

  @override
  String toString() {
    return '''
isDone: ${isDone},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
enquiryResponse: ${enquiryResponse},
requestBodys: ${requestBodys},
billerCode: ${billerCode},
channelCode: ${channelCode},
loglist: ${loglist}
    ''';
  }
}
