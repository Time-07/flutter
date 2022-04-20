import '../../../../../common/adapters/http_Client/http_client_adapter.dart';
import '../../domain/entities/user_entity.dart';
import '../repositories/datasources/register_datasource_interface.dart';
import '../repositories/models/user_model.dart';

class RegisterDatasource extends IRegisterDatasource {
  final IHttpClientAdapter _httpClient;

  RegisterDatasource({required httpClient}) : _httpClient = httpClient;

  //TODO: Receber  email e nome como parametro
  @override
  Future<UserEntity> register(String name, String cpf, String email,
      String password, String gender) async {
    print('chegou na RegisterDatasource');
    final responseRoles =
        await _httpClient.post('/roles', data: {'name': 'Trans'});
    final id = getIdFromRoles(responseRoles.data);
    final respose = await _httpClient.post('/users', data: {
      'name': name,
      'cpf': cpf,
      'email': email,
      'password': password,
      'gender': gender,
      'role_id': id,
      'phone': 0,
      'cellPhone': 0,
      'crmCrp': '',
      'specialty': '',
      'street': '',
      'number': 0,
      'neighborhood': '',
      'city': '',
      'state': '',
      'price': 0,
      'description': '',
      'courses': '',
      'healthPlan': '',
      'bathroomSpecific': true,
      'linkedin': ''
    });
    var result = UserModel.fromJson(respose.data);

    print('AQUI2: $respose');
    print('AQUI2: $responseRoles');

    return result;
  }

  String getIdFromRoles(Map<String, dynamic> json) {
    return json['id'];
  }
}
