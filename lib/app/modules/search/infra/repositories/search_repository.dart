import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';
import 'package:trans_app/app/modules/search/domain/repositories/search_repository_interface.dart';
import 'package:trans_app/app/modules/search/infra/repositories/datasources/search_datasource_interface.dart';

class SearchRepository extends ISearchRepository {
  final ISearchDatasource _SearchDatasource;

  SearchRepository({required ISearchDatasource searchDatasource})
      : _SearchDatasource = searchDatasource;

  @override
  Future<List<MedicoEntity>> search(
      String gender, String speciality, String city) async {
    final result = await _SearchDatasource.search(gender, speciality, city);

    List<MedicoEntity> lista = [];
    lista.add(MedicoEntity(
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
        linkedin: "",
        photo: ""));
    return lista;
    //return result;
  }
}
