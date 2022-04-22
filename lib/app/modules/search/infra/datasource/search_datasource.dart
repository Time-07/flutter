import 'package:trans_app/app/modules/search/infra/repositories/datasources/search_datasource_interface.dart';
import 'package:trans_app/app/modules/search/infra/repositories/models/medico_model.dart';
import 'package:trans_app/common/adapters/http_Client/http_client_adapter.dart';

class SearchDataSource extends ISearchDatasource {
  final IHttpClientAdapter _httpClient;

  SearchDataSource({required httpClient}) : _httpClient = httpClient;
  @override
  Future<List<MedicoModel>> search(
      String gender, String speciality, String city) async {
    final response = await _httpClient.get('/', queryParameters: {
      'gender': gender,
      'speciality': speciality,
      'city': city,
    });
    //implementar retorno de lista de medicos
    List<MedicoModel> lista = [];
    lista.add(MedicoModel(
        name: "",
        email: "",
        password: "",
        cpf: "",
        gender: "",
        cellPhone: 0,
        street: "",
        number: 1,
        neighborhood: "",
        city: "",
        state: "",
        crmCrp: "",
        specialty: "",
        phone: 0,
        value: 0,
        description: "",
        courses: "",
        healthPlan: "",
        bathroomSpecific: true,
        linkedin: ""));
    return lista;
  }
}
