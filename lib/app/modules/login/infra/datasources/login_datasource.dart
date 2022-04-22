import 'package:trans_app/app/modules/login/infra/repositories/datasources/login_datasource_interface.dart';
import 'package:trans_app/app/modules/login/infra/repositories/models/User_model.dart';
import 'package:trans_app/common/adapters/http_Client/http_client_adapter.dart';

class LoginDatasource extends ILoginDatasource {
  final IHttpClientAdapter _httpClient;

  LoginDatasource({required httpClient}) : _httpClient = httpClient;

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await _httpClient
        .post('auth/login', data: {'email': email, 'password': password});

    if (response.statusCode != 200) {
      throw Exception('Teste');
    }
    var result = UserModel.fromJson(response.data);
    return result;
  }
}
