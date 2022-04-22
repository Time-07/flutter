import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/home/presentation/home_controller.dart';
import 'package:trans_app/app/modules/home/presentation/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => HomeController(),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
