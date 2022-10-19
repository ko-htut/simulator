import 'package:simulator/models/response/biller_category_response.dart';

abstract class HomeRepository {
  HomeRepository._();
  Future<BillerCategoryResponse> getBillerCategory();
  Future<BillerCategoryResponse> getBillerProduct();
  Future<BillerCategoryResponse> getEnquiry();
  Future<BillerCategoryResponse> getComfirm();
  // Future<GameListResponse> getGameByCateGory({required String category});
}
