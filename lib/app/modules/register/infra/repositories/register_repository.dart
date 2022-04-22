import 'package:trans_app/app/modules/register/domain/repositories/register_repository_interface.dart';

import '../../domain/entities/user_entity.dart';
import 'datasources/register_datasource_interface.dart';

class RegisterRepository extends IRegisterRepository{
  final IRegisterDatasource _registerDatasource;

  RegisterRepository({required IRegisterDatasource registerDatasource}):_registerDatasource = registerDatasource;

  @override
  Future<UserEntity> register(String name, String cpf, String email, String password, String gender) async {
    print('passou no register repository');
    final result = await _registerDatasource.register(name, cpf, email, password, gender);

    return result;
  }
}