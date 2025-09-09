import 'package:mvvm_project/data/network/base_api_services.dart';
import 'package:mvvm_project/data/network/network_api_services.dart';
import 'package:mvvm_project/resources/app_urls.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
        AppUrls.loginUrl,
        data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
