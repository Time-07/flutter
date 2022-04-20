import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/domain/repositories/login_repository_interface.dart';
import 'package:trans_app/app/modules/login/domain/usecases/login.dart';
import 'package:trans_app/app/modules/login/infra/datasources/login_datasource.dart';
import 'package:trans_app/app/modules/login/infra/repositories/datasources/login_datasource_interface.dart';
import 'package:trans_app/app/modules/login/infra/repositories/login_repository.dart';
import 'package:trans_app/app/modules/login/presentation/login_controller.dart';
import 'package:trans_app/app/modules/login/presentation/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<ILoginDatasource>(((i) => LoginDatasource(httpClient: i()))),
        Bind.factory<ILoginRepository>(((i) => LoginRepository(loginDatasource: i()))),
        Bind.factory<ILogin>((i) => Login(loginRepository: i())),
        Bind.factory(
          (i) => LoginController(
            login: i(),
          )
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPage()),
      ];
}
