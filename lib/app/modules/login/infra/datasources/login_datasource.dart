import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';
import 'package:trans_app/app/modules/login/infra/repositories/datasources/login_datasource_interface.dart';
import 'package:trans_app/app/modules/login/infra/repositories/models/User_model.dart';
import 'package:trans_app/common/adapters/http_Client/http_client_adapter.dart';

class LoginDatasource extends ILoginDatasource{
  final IHttpClientAdapter _httpClient;

  LoginDatasource({required httpClient}):_httpClient = httpClient;

  //TODO: Receber  email e nome como parametro
  @override
  Future<UserModel> login(String email, String password) async {
      final respose = await _httpClient.post('/auth/login',data: {'email': email, 'password': password});
      var result = UserModel.fromJson(respose.data);
      return result;
  }
} 