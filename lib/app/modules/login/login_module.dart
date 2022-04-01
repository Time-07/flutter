import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/presentation/login_page.dart';

class SortModule extends Module{
  @override
  List<Bind> get binds => [

  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const LoginPage()),
  ];
}