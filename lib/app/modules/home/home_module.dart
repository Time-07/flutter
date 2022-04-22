import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/home/presentation/prepesquisa/pre_pesquisa_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const PrePesquisa()),
      ];
}
