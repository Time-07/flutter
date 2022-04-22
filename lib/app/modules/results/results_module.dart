import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/results/presentation/results_controller.dart';
import 'package:trans_app/app/modules/results/presentation/results_page.dart';

class ResultsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => ResultsController(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => ResultsPage(
                  doctors: args.data,
                )),
      ];
}
