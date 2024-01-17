part of 'api_repository.dart';

mixin TakeAwayRepositoryMixin {
  Future<dynamic> getAllCategories() async {
    try {
      final response = await dio.get(Constants.getAllCategories);
      if (response.statusCode == 200) {
        final list = response.data as List<dynamic>;
        final categories = list.map((json) => Category.fromJson(json)).toList();
        return categories;
      }

      return ApiError(
        errorCode: Constants.connectionTimeOutErrorCode,
        errorMessage: "Unknown response",
      );
    } on DioException catch (e) {
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

  Future<dynamic> getProductByACategoryId(int categoryId) async {
    try {
      final response =
          await dio.get("${Constants.getProductByACategory}/$categoryId");

      if (response.statusCode == 200) {
        final list = response.data as List<dynamic>;
        final result = list.map((json) => Product.fromJson(json)).toList();
        return result;
      }

      return ApiError(
        errorCode: Constants.connectionTimeOutErrorCode,
        errorMessage: "Unknown response",
      );
    } on DioException catch (e) {
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

  Future<dynamic> searchProduct(String search) async{
    try{
      final response = await dio.get("${Constants.searchAProduct}/$search");

      if (response.statusCode == 200) {
        final list = response.data as List<dynamic>;
        final result = list.map((json) => Product.fromJson(json)).toList();
        return result;
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
