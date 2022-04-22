import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/doctor/presentation/doctor_controller.dart';
import 'package:trans_app/app/modules/doctor/presentation/doctor_page.dart';

class DoctorModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => DoctorController(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => DoctorPage(
                  doctor: args.data,
                )),
      ];
}
