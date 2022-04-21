import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/home/home_module.dart';
import 'package:trans_app/app/modules/home/presentation/home_page.dart';
import 'package:trans_app/app/modules/login/login_module.dart';
import 'package:trans_app/app/modules/splash/splash_module.dart';

import '../common/adapters/http_Client/dio/dio_adapter.dart';
import '../common/adapters/http_Client/dio/interceptors/dio_interceptors.dart';
import '../common/adapters/http_Client/http_client_adapter.dart';
import 'modules/register/register_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory<IHttpClientAdapter>((i) => DioAdapter(
          dio: i(),
          interceptors: [
            i<CustomInterceptors>(),
          ],
        )),
    Bind.factory<CustomInterceptors>((i) => CustomInterceptors()),
    Bind.factory((i) => Dio(i())),
    Bind.factory<BaseOptions>((i) => BaseOptions(
        baseUrl: 'https://camp-api-docker-v3.herokuapp.com/api/v1/')),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/register', module: RegisterModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/', module: SplashModule()),
      ];
}
