import 'dart:convert';

import 'package:four20society/constants/apis_path/api_config_string.dart';
import 'package:four20society/feature/category/model/category_model.dart';
import 'package:four20society/utils/local_storage/local_storage.dart';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../feature/profile/model/profile_model.dart';
import '../../../feature/wish_list/model/wishlist_page_model.dart';
import '../../../global_widget/custom_concenrate_product_model.dart';
import '../../../global_widget/custom_home_products_model.dart';
import '../../../global_widget/custom_todays_deal_product_cart_model.dart';

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

  Future<FeaturedProducts> getAllFeaturedProduct() async {
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
        log('--------Response getFeaturesProduct : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? FeaturedProducts.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return FeaturedProducts.withError(
          "You are offline. Please check your internet connection.");
    }
  }

//  apiProvider for today's deal api

  Future<TodaysDealsModel> getAllTodayDealProduct() async {
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
      response = await _dio.post(ApiEndPoints.todayDeals);
      if (kDebugMode) {
        log('--------Response getTodayProducts : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? TodaysDealsModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return TodaysDealsModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

  // api provider for product-by-category api
  Future<WishListModel> getAllWishlist() async {
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
      response = await _dio.post(ApiEndPoints.wishlistProduct);
      if (kDebugMode) {
        log('--------Response getWishListProductsList : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? WishListModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return WishListModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

//  api for wishlist (list)Api
  Future<WishListModel> getAllWishlistByCategory() async {
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
      response = await _dio.post(ApiEndPoints.wishlistProduct);
      if (kDebugMode) {
        log('--------Response getTodayProducts : $response');
        print("hhihifgishgsfhgfhsdigdjgod this is wishList");
      }
      return response.statusCode == 200
          ? WishListModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return WishListModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }
  //Profile Api
  // Future<ProfileModel> getProfile() async {
  //   Response response;
  //   String? authToken;
  //
  //   String token = await localStorageService
  //       .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
  //       "";
  //   print("token $token");
  //   try {
  //     _dio.options.headers = {
  //       'Accept': 'application/json',
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer $token',
  //     };
  //     response = await _dio.post(ApiEndPoints.wishlistProduct);
  //     if (kDebugMode) {
  //       log('--------Response getTodayProducts : $response');
  //       print("hhihifgishgsfhgfhsdigdjgod this is wishList");
  //     }
  //     return response.statusCode == 200
  //         ? ProfileModel.fromJson(response.data)
  //         : throw Exception('Something Went Wrong');
  //   } catch (error, stacktrace) {
  //     if (kDebugMode) {
  //       log('$error');
  //     }
  //     if (kDebugMode) {
  //       log("Exception occurred: $error stackTrace: $stacktrace");
  //     }
  //     return ProfileModel.withError(
  //         "You are offline. Please check your internet connection.");
  //   }
  // }





  //Add wishlist Api calling
  Future<void> addProductList(Map<String, dynamic> formData) async {
    String token = await localStorageService.getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ?? "";
    try {
      final Dio dio = Dio();
      dio.options.headers = {
        'Content-Type':"application/json",
        "Authorization": "Bearer $token"
      };
      print("token $token");
      final response = await dio.post(ApiEndPoints.addWishList, data: formData);
      print("-------");
       print(response.data['message']);
    } catch (err) {
      print(err.toString());
    }
  }



}
