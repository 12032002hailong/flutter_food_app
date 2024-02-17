import 'package:food_app_btl/data/repository/auth_repo.dart';
import 'package:food_app_btl/models/response_model.dart';
import 'package:food_app_btl/models/signup_body_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;
  AuthController({required this.authRepo});
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> registration(SignUpBody signUpBody) async {
    _isLoading = true;
    update();
    Response response = await authRepo.registration(signUpBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      authRepo.saveUserToken(response.body["token"]);
      responseModel = ResponseModel(true, response.body['token']);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> login(String phone, String password) async {
    authRepo.getUserToken();
    _isLoading = true;
    update();
    Response response = await authRepo.login(phone, password);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      authRepo.saveUserToken(response.body["token"]);
      // print("Token is " + response.body["token"].toString());
      responseModel = ResponseModel(true, response.body['token']);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<void> saveUserNumberAndPassword(String number, String password) async {
    try {
      await authRepo.saveUserNumberAndPassword(number, password);
    } catch (e) {
      throw e;
    }
  }

  bool userLoggedIn() {
    return authRepo.userLoggedIn();
  }

  bool clearSharedData() {
    return authRepo.clearSharedData();
  }
}
