import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/search/domain/repositories/search_repository_interface.dart';
import 'package:trans_app/app/modules/search/domain/usecases/search.dart';
import 'package:trans_app/app/modules/search/infra/datasource/search_datasource.dart';
import 'package:trans_app/app/modules/search/infra/repositories/datasources/search_datasource_interface.dart';
import 'package:trans_app/app/modules/search/infra/repositories/search_repository.dart';
import 'package:trans_app/app/modules/search/presentation/search_controller.dart';
import 'package:trans_app/app/modules/search/presentation/search_page.dart';

class SearchModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<ISearchDatasource>(((i) => SearchDataSource(httpClient: i()))),
        Bind.factory<ISearchRepository>(((i) => SearchRepository(searchDatasource: i()))),
        Bind.factory<ISearch>((i) => Search(searchRepository: i())),
        Bind.factory(
          (i) => SearchController(
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SearchPage()),
      ];
}