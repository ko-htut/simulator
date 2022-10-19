import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:simulator/models/response/biller_category_response.dart';
import 'package:simulator/module/home/respositories/home_repo.dart';

part 'biller_category_store.g.dart';

class BillerCategoryStore = _BillerCategoryStoreBase with _$BillerCategoryStore;

abstract class _BillerCategoryStoreBase with Store {
  //
  final HomeRepository _repo = Modular.get<HomeRepository>();

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  BillerCategoryResponse? billerCategoryResponse;

  @action
  Future<void> getBillerCategory() async {
    try {
      isLoading = true;
      errorMessage = "";
      billerCategoryResponse = null;
      var data = await _repo.getBillerCategory();
      billerCategoryResponse = data;
      isLoading = false;
    } on SocketException {
      isLoading = false;
      errorMessage = "Internet May Not Available";
    } catch (e) {
      isLoading = false;
      debugPrint('Error is ${e.toString()}');
      errorMessage = e.toString();
    }
  }
}
