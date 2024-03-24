part of "api_repository.dart";

mixin DineAreaRepository{

  Future<dynamic> getAllAreas() async {
    try {
      final response = await dio.get(
        Constants.getAllAreas,
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        final dineInArea = DineInArea.fromJson(response.data);
        return dineInArea;
      }
      return const ApiError(
          errorCode: Constants.connectionTimeOutErrorCode,
          errorMessage: "Unknown response",
          errorData: null);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return const ApiError(
          errorCode: Constants.connectionTimeOutErrorCode,
          errorMessage:
          "Connection time out. either server down or network is not available",
        );
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
              "There have some problem while getting All area",
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

  // Add Area
  Future<dynamic> addAnArea(DineInArea dineInArea) async {
    try {
      final response = await dio.post(
        Constants.addArea,
        data: jsonEncode(dineInArea.toJson()),
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        final adminResponse = response.data;
        return adminResponse;
      }
      return const ApiError(
        errorCode: Constants.connectionTimeOutErrorCode,
        errorMessage: "Unknown response",
      );
    } on DioException catch (e) {
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
              "There have some problem while adding area",
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