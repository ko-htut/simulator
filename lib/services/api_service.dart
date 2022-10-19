import 'package:chopper/chopper.dart';
import 'package:simulator/models/response/biller_category_response.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/BPA")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient? client]) => _$APIService(client);
//

  @Post(path: '/GetBillerCategory')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<BillerCategoryResponse>> billerCategory(
   @Body() Map<dynamic, dynamic> body
  );

  @Post(path: '/GetBillerProduct')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<BillerCategoryResponse>> billerProduct(
    @Body() Map<dynamic, dynamic> body
  );

  @Post(path: '/Enquiry')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<BillerCategoryResponse>> enquiry(
    @Body() Map<dynamic, dynamic> body
  );

  @Post(path: '/Confirm')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<BillerCategoryResponse>> comfirm(
   @Body() Map<dynamic, dynamic> body
  );
}
