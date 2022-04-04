import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/splash/splash_module.dart';

import 'modules/login/login_module.dart';

class AppModule extends Module{
  @override
  final List<Bind> binds = [
    Bind.factory((i) => Dio(i())),
    //TODO: trocar url quando Michele fizer o endpoint
    Bind.factory<BaseOptions>(
         (i) => BaseOptions(baseUrl: 'https://api.hgbrasil.com')),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/login', module: LoginModule()),
  ];
}