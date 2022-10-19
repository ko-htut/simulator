import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/models/response/biller_category_response.dart';
import 'package:simulator/module/home/respositories/home_repo.dart';
import 'package:simulator/services/api_service.dart';

class HomeRepositoryImpl implements HomeRepository {
  final APIService _apiService = Modular.get<APIService>();

  HomeRepositoryImpl._();

  static HomeRepository get instance => HomeRepositoryImpl._();

  @override
  Future<BillerCategoryResponse> getBillerCategory() async {
    var response = await _apiService.billerCategory(
        {"ChannelCode": "AbankMM", "BillerCode": "OoredooEload"});
    return response.body!;
  }

  @override
  Future<BillerCategoryResponse> getBillerProduct() async {
    var response = await _apiService.billerProduct(
        {"ChannelCode": "AbankMM", "BillerCode": "OoredooEload"});
    return response.body!;
  }

  @override
  Future<BillerCategoryResponse> getComfirm() async {
    var response = await _apiService.billerProduct(
        {"ChannelCode": "AbankMM", "BillerCode": "OoredooEload"});
    return response.body!;
  }

  @override
  Future<BillerCategoryResponse> getEnquiry() async {
    var response = await _apiService.billerProduct(
        {"ChannelCode": "AbankMM", "BillerCode": "OoredooEload"});
    return response.body!;
  }

//
}
