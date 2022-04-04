import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/splash/splash_module.dart';

import 'modules/login/login_module.dart';

class AppModule extends Module{
  @override
  final List<Bind> binds = [
    Bind.factory((i) => Dio(i())),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/login', module: LoginModule()),
  ];
}