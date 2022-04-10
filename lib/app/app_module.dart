import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/home/home_module.dart';
import 'package:trans_app/app/modules/home/presentation/home_page.dart';
import 'package:trans_app/app/modules/login/login_module.dart';
import 'package:trans_app/app/modules/register/presentation/register_controller.dart';
import 'package:trans_app/app/modules/register/register_module.dart';
import 'package:trans_app/app/modules/splash/splash_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => Dio(i())),
    Bind.factory((i) => RegisterController()),
    //TODO: trocar url quando Michele fizer o endpoint
    Bind.factory<BaseOptions>(
        (i) => BaseOptions(baseUrl: 'https://api.hgbrasil.com')),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/cadastro', module: RegisterModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
