part of 'api_repository.dart';

mixin DineTableRepository {


  Future<dynamic> addATable(DineInTable dineInTable) async {
    try {
      final response = await dio.post(
        Constants.addTable,
        data: jsonEncode(dineInTable.toJson()),
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
      printWarning(e.toString());
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
      printWarning(e.response!.statusCode.toString());

      return ApiError(
          errorCode: e.response?.statusCode ?? Constants.generalErrorCode,
          errorMessage: e.response?.statusMessage ??
              "There have some problem while adding Table",
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

  Future<dynamic> getAllTablesUnderAnArea(int areaId) async {
    try {

      final  url = "${Constants.getAllTableUnderAnArea}$areaId";
      final response = await dio.get(
        url,
        options:
            Options(headers: {Headers.contentTypeHeader: 'application/json'}),
      );

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        final listOfTables = data.map((e) => DineInTable.fromJson(e)).toList();
        return listOfTables;
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
              "There have some problem while adding Table",
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




  // getAllKotUnderATable

  Future<dynamic> getAllKotUnderATable(int dineTableId) async{
    try{
      final url = "${Constants.getAllKotUnderATable}$dineTableId";

      final response = await dio.get(url);

      if(response.statusCode == 200){
        final listOfData = response.data as List;
        final listOfDineInkot =listOfData.map((json) => DineInKot.fromJson(json)).toList();
        return listOfDineInkot;
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
              "There have some problem while get table kot",
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
