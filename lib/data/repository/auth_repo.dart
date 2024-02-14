import 'package:food_app_btl/data/api/api_client.dart';
import 'package:food_app_btl/models/signup_body_model.dart';
import 'package:food_app_btl/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.REGISTRATION_URI, signUpBody.toJson());
  }

  saveUserToken(String token) {
    apiClient.token = token;
    apiClient.updateHeader(token);
  }
}
