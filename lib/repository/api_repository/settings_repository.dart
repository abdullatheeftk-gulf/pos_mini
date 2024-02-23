

part of 'api_repository.dart';

mixin SettingsRepository{


  // Add User from admin privilege
  Future<dynamic> addAUser(User user) async{

    try{

      final response = await dio.post(
        Constants.addUser,
        data: jsonEncode(user),
        options: Options(
          headers: {Headers.contentTypeHeader: 'application/json'},
        ),
      );

      if(response.statusCode==200){
        final data = response.data as int;
        return data;
      }



      return const ApiError(
        errorCode: Constants.connectionTimeOutErrorCode,
        errorMessage: "Unknown response",
      );

    }on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return const ApiError(
            errorCode: Constants.connectionTimeOutErrorCode,
            errorMessage:
            "Connection time out. either server down or network is not available");
      }

      if (e.type == DioExceptionType.connectionError) {
        return const ApiError(
          errorCode: Constants.networkErrorCode,
          errorMessage: "check network",
        );
      }

      return ApiError(
          errorCode: e.response?.statusCode ?? Constants.generalErrorCode,
          errorMessage: e.response?.statusMessage ??
              "There have some problem while fetching welcome message",
          errorData: e.response?.data);
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