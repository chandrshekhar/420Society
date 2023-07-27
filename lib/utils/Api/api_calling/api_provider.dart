import 'package:four20society/constants/apis_path/api_config_string.dart';
import 'package:four20society/feature/category/model/category_model.dart';
import 'package:four20society/utils/local_storage/local_storage.dart';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiProvider {
  final Dio _dio = Dio();
  LocalStorageService localStorageService = LocalStorageService();

  Future<CategoryModel> getAllCategory() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
     print("token $token");
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.category);
      if (kDebugMode) {
        log('--------Response getCategory : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? CategoryModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return CategoryModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }


  //my code trying to make api calling for featured_product Api

  Future<CategoryModel> getAllFeature() async {
    Response response;
    String? authToken;

    String token = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
     print("token $token");
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.featuredProduct);
      if (kDebugMode) {
        log('--------Response getCategory : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? CategoryModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return CategoryModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }
}
