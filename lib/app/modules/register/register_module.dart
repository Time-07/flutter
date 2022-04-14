import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/register/domain/repositories/register_repository_interface.dart';
import 'package:trans_app/app/modules/register/domain/usecases/register.dart';
import 'package:trans_app/app/modules/register/infra/datasources/register_datasource.dart';
import 'package:trans_app/app/modules/register/infra/repositories/datasources/register_datasource_interface.dart';
import 'package:trans_app/app/modules/register/infra/repositories/register_repository.dart';
import 'package:trans_app/app/modules/register/presentation/register_controller.dart';
import 'package:trans_app/app/modules/register/presentation/register_page.dart';

class RegisterModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<IRegisterDatasource>(((i) => RegisterDatasource(httpClient: i()))),
        Bind.factory<IRegisterRepository>(((i) => RegisterRepository(registerDatasource: i()))),
        Bind.factory<IRegister>((i) => Register(registerRepository: i())),
        Bind.factory(
          (i) => RegisterController(
            register: i(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const RegisterPage()),
      ];
}
