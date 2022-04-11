import 'package:trans_app/app/modules/register/infra/repositories/models/roles_model.dart';

import '../../../../../common/adapters/http_Client/http_client_adapter.dart';
import '../../domain/entities/user_entity.dart';
import '../repositories/datasources/register_datasource_interface.dart';
import '../repositories/models/user_model.dart';

class RegisterDatasource extends IRegisterDatasource{
  final IHttpClientAdapter _httpClient;

  RegisterDatasource({required httpClient}): _httpClient = httpClient;

  //TODO: Receber  email e nome como parametro
  @override
  Future<UserEntity> register(String name, String cpf, String email, String password, String gender) async {
    //final responseRoles = await _httpClient.post('/roles', data: {'name':'Trans'});
      final respose = await _httpClient.post('/',data: {'name': name, 'cpf': cpf, 'email': email, 'password':password, 'gender':gender});
      var result = UserModel.fromJson(respose.data);
      return result;
    
  }
} 