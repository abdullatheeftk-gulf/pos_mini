part of "api_repository.dart";

mixin DineAreaRepository {

  // Get All area
  Future<dynamic> getAllAreas() async {
    try {
      final response = await dio.get(
        Constants.getAllAreas,
        options:
            Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        final list = response.data as List<dynamic>;
        final dineInAreas =
            list.map((json) => DineInArea.fromJson(json)).toList();
        return dineInAreas;
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

  Future<dynamic> editArea(DineInArea dineInArea) async {
    try {
      final response = await dio.put(
        Constants.updateArea,
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
              "There have some problem while updating area",
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

  Future<dynamic> deleteAnAreaById(DineInArea dineInArea) async {
    final url = "${Constants.deleteAnAreaById}/${dineInArea.id}";
    try {
      final response = await dio.delete(
        url,
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
              "There have some problem while updating area",
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

  // Get list of kots under an area
  Future<dynamic> getKotListUnderAnArea(int areaId) async {
    try{
    final url = "${Constants.getKotListUnderAnArea}$areaId";
    final response = await dio.get(url);
    
    if(response.statusCode == 200){
      final data = response.data as List;
      final listOfKots = data.map((json)=>Kot.fromJson(json)).toList();
      return listOfKots;
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
              "There have some problem while getting Kot list",
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
