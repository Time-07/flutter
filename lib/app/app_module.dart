import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/domain/usecases/login.dart';
import 'package:trans_app/app/modules/login/login_module.dart';
import 'package:trans_app/app/modules/splash/splash_module.dart';

import 'modules/register/register_module.dart';

class AppModule extends Module{
  @override
  final List<Bind> binds = [
    Bind.factory((i) => Dio(i())),
    Bind.factory<BaseOptions>(
         (i) => BaseOptions(baseUrl: 'https://camp-api-docker-v3.herokuapp.com/api/v1')),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/register',module: RegisterModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/', module: SplashModule()),
  ];
}