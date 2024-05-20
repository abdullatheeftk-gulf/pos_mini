
part of 'api_repository.dart';

mixin DineTableDisplayScreenMixin{


  Future<dynamic> getAllDineTableUnderAnArea(int areaId) async{
    try{

      final url = "${Constants.getAllTableUnderAnArea}$areaId";

      final response = await dio.get(url);

      if(response.statusCode==200){
        final data = response.data as List;
        final List<DineInTable> dineInTables = data.map((element) => DineInTable.fromJson(element)).toList();
        return dineInTables;

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
              "There have some problem while getting dine in Table",
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