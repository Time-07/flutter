import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';
import 'package:trans_app/app/modules/search/domain/repositories/search_repository_interface.dart';

abstract class ISearch {
  Future call(String gender, String speciality, String city);
}

class Search extends ISearch {
  final ISearchRepository _SearchRepository;

  Search({required ISearchRepository searchRepository})
      : _SearchRepository = searchRepository;

  @override
  Future<List<MedicoEntity>> call(
      String gender, String speciality, String city) async {
    var medicos = await _SearchRepository.search(gender, speciality, city);

    return medicos;
  }
}
