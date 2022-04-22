import 'package:shared_preferences/shared_preferences.dart';
import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';
import 'package:trans_app/app/modules/login/domain/repositories/login_repository_interface.dart';

abstract class ILogin {
  Future<UserEntity> call(String email, String password);
}

class Login extends ILogin {
  final ILoginRepository _loginRepository;

  Login({required ILoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @override
  Future<UserEntity> call(String email, String password) async {
    var user = await _loginRepository.login(email, password);
    savePref(email, password);
    return UserEntity(email: user.email, password: user.password);
  }

  savePref(String email, String password) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setString("email", email);
    preferences.setString("password", password);
    preferences.commit();
  }
}
