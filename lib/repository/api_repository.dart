
import 'package:dio/dio.dart';
import 'package:pos_mini/util/api_error.dart';
import 'package:pos_mini/util/constants.dart';

class ApiRepository{
  final Dio dio;

  ApiRepository({required this.dio});

  Future<dynamic> getWelcomeMessage(String baseUrl) async {
    try {
      dio.options.baseUrl = baseUrl;
      final response = await dio.get("");


      if (response.statusCode == 200) {
        final String data = response.data;
        return data;
      }

      return ApiError(errorCode:  Constants.connectionTimeOutErrorCode, errorMessage:"Unknown response");

    } on DioException catch (e) {

      if(e.type == DioExceptionType.connectionTimeout){
        return ApiError(
            errorCode: Constants.connectionTimeOutErrorCode,
            errorMessage: "Connection time out. either server down or network is not available");
      }

      if (e.type == DioExceptionType.connectionError) {
        return ApiError(
            errorCode: Constants.networkErrorCode,
            errorMessage: "check network");
      }

      return ApiError(errorCode: e.response?.statusCode ?? Constants.generalErrorCode, errorMessage: e.response?.statusMessage??"There have some problem while fetching welcome message");
    }

    on TypeError catch(e){
      return ApiError(errorCode: Constants.jsonConvertException, errorMessage: "Json Convert Exception - ${e.toString()}");
    }

    catch (e) {
      return ApiError(errorCode: Constants.generalErrorCode, errorMessage: e.toString());
    }
  }

}