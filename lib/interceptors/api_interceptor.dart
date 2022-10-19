import 'dart:async';
import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';


class APIInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (request.url.endsWith("login") || request.url.endsWith('')) {
      return request;
    }
    // AuthStore _authStore = Modular.get<AuthStore>();
    String token = "";

    // Box box1 = await Hive.openBox('logindata');
    // token = box1.get('token');
    // debugPrint('Token::$token');
    
    return request.copyWith(headers: {
      HttpHeaders.acceptHeader: "application/json",
      // HttpHeaders.authorizationHeader: "Bearer $token",
    });
  }
}
