import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';

import 'datasources/login_datasource_interface.dart';

class LoginRepository extends ILoginDatasource{
  final ILoginDatasource _loginDatasource;

  LoginRepository({required ILoginDatasource loginDatasource}):_loginDatasource = loginDatasource;

  @override
  Future<UserEntity> login(String email, String password) async {
    final result = await _loginDatasource.login(email, password);

    return result;
  }
}