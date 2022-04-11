import '../../domain/entities/user_entity.dart';
import 'datasources/register_datasource_interface.dart';

class RegisterRepository extends IRegisterDatasource{
  final IRegisterDatasource _loginDatasource;

  RegisterRepository({required IRegisterDatasource loginDatasource}):_loginDatasource = loginDatasource;

  @override
  Future<UserEntity> register(String name, String cpf, String email, String password, String gender) async {
    final result = await _loginDatasource.register(name, cpf, email, password, gender);

    return result;
  }
}