// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$APIService extends APIService {
  _$APIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = APIService;

  @override
  Future<Response<BillerCategoryResponse>> billerCategory(
      Map<dynamic, dynamic> body) {
    final $url = '/BPA/GetBillerCategory';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BillerCategoryResponse, BillerCategoryResponse>(
      $request,
      requestConverter: FormUrlEncodedConverter.requestFactory,
    );
  }

  @override
  Future<Response<BillerCategoryResponse>> billerProduct(
      Map<dynamic, dynamic> body) {
    final $url = '/BPA/GetBillerProduct';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BillerCategoryResponse, BillerCategoryResponse>(
      $request,
      requestConverter: FormUrlEncodedConverter.requestFactory,
    );
  }

  @override
  Future<Response<BillerCategoryResponse>> enquiry(Map<dynamic, dynamic> body) {
    final $url = '/BPA/Enquiry';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BillerCategoryResponse, BillerCategoryResponse>(
      $request,
      requestConverter: FormUrlEncodedConverter.requestFactory,
    );
  }

  @override
  Future<Response<BillerCategoryResponse>> comfirm(Map<dynamic, dynamic> body) {
    final $url = '/BPA/Confirm';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BillerCategoryResponse, BillerCategoryResponse>(
      $request,
      requestConverter: FormUrlEncodedConverter.requestFactory,
    );
  }
}
