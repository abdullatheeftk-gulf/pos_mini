part of 'api_repository.dart';
mixin BarcodeRepository{
// Add Barcode
  Future<dynamic> addBarcode(Barcode barcode) async {
    try {
      final response = await dio.post(
        Constants.addBarcode,
        data: jsonEncode(barcode.toJson()),
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        return response.data as int;
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
              "There have some problem while adding barcode",
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

  // Add Other id
  Future<dynamic> addBarcodeOtherId(Barcode barcode) async {
    try {
      final response = await dio.put(
        Constants.addBarcodeOtherId,
        data: jsonEncode(barcode.toJson()),
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        return response.data as String;
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
              "There have some problem while adding barcode",
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

  // Add updateBarcodeByFoodItemId
  Future<dynamic> updateBarcodeByFoodItemId(Barcode barcode) async {
    try {
      final response = await dio.put(
        Constants.updateBarcodeByFoodItemId,
        data: jsonEncode(barcode.toJson()),
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        return response.data as String;
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
              "There have some problem while adding barcode",
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

  // Add updateBarcodeByMultiFoodItemId
  Future<dynamic> updateBarcodeByMultiFoodItemId(Barcode barcode) async {
    try {
      final response = await dio.put(
        Constants.updateBarcodeByMultiFoodItemId,
        data: jsonEncode(barcode.toJson()),
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        return response.data as String;
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
              "There have some problem while adding barcode",
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

  // Add updateBarcodeByTableId
  Future<dynamic> updateBarcodeByTableId(Barcode barcode) async {
    try {
      final response = await dio.put(
        Constants.updateBarcodeByTableId,
        data: jsonEncode(barcode.toJson()),
        options:
        Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        return response.data as String;
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
              "There have some problem while adding barcode",
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