import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';

abstract class ISearchRepository{
  Future <List<MedicoEntity>> search(String gender, String speciality, String city);
}