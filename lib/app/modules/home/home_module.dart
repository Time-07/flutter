import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/home/presentation/pages/faq/faq_page.dart';
import 'package:trans_app/app/modules/home/presentation/pages/prepesquisa/pre_pesquisa_page.dart';
import 'package:trans_app/app/modules/home/presentation/pages/sobre/sobre_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const PrePesquisa()),
        ChildRoute('/faq', child: (context, args) => const FaqPage()),
        ChildRoute('/sobre', child: (context, args) => const SobrePage()),
      ];
}
