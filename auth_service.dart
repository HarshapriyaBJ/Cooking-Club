import 'package:flutter_application_1/Services/http_service.dart';
import '../models/user.dart';

class AuthService {
  static final AuthService _singleton = AuthService._internal();

  final _httpService = HTTPService();
  User? user;

  factory AuthService() {
    return _singleton;
  }
  AuthService._internal();
  Future<bool> login(String UserName, String password) async {
    try {
      var response = await _httpService.post("auth/login", {
        "username": UserName,
        "password": password,
      });
      if (response?.statusCode == 200 && response?.data != null) {
        user = User.fromJson(response!.data);
        HTTPService().setup(bearerToken: user!.token!);
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
