import 'package:trans_app/app/modules/search/infra/repositories/models/medico_model.dart';

abstract class ISearchDatasource{
  Future<List<MedicoModel>> search(String gender, String speciality, String city);
}