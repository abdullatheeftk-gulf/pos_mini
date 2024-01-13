import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pos_mini/models/admin_response/admin_response.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/models/user_response/user_response.dart';
import 'package:pos_mini/util/api_error.dart';
import 'package:pos_mini/util/constants.dart';

import '../../main.dart';
part 'splash_repository_mixin.dart';
part 'login_repository_mixin.dart';
class ApiRepository with SplashRepositoryMixin,LoginRepositoryMixin {
  


  Future<dynamic> getAllCategories() async{
    try{
      final response = await dio.get(Constants.getAllCategories);

      if(response.statusCode==200){

      }

      return ApiError(
        errorCode: Constants.connectionTimeOutErrorCode,
        errorMessage: "Unknown response",
      );
    }on DioException catch (e) {

      if (e.type == DioExceptionType.connectionTimeout) {
        return ApiError(
            errorCode: Constants.connectionTimeOutErrorCode,
            errorMessage:
            "Connection time out. either server down or network is not available");
      }

      if (e.type == DioExceptionType.connectionError) {
        return ApiError(
          errorCode: Constants.networkErrorCode,
          errorMessage: "check network",
        );
      }

      return ApiError(
          errorCode: e.response?.statusCode ?? Constants.generalErrorCode,
          errorMessage: e.response?.statusMessage ??
              "There have some problem while fetching welcome message",
          errorData: e.response?.data
      );
    } on TypeError catch (e) {
      return ApiError(
          errorCode: Constants.jsonConvertException,
          errorMessage: "Json Convert Exception - ${e.toString()}");
    } catch (e) {
      return ApiError(
          errorCode: Constants.generalErrorCode, errorMessage: e.toString());
    }
  }
}
