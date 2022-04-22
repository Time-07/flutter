import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/doctor/doctor_module.dart';
import 'package:trans_app/app/modules/home/home_module.dart';
import 'package:trans_app/app/modules/login/login_module.dart';
import 'package:trans_app/app/modules/onboarding/onboarding_module.dart';
import 'package:trans_app/app/modules/results/results_module.dart';
import 'package:trans_app/app/modules/search/search_module.dart';
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

    Bind.factory<BaseOptions>((i) =>
        BaseOptions(baseUrl: 'https://diversaude-api.herokuapp.com/api/v1')),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/register', module: RegisterModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/cadastro', module: RegisterModule()),
        ModuleRoute('/search',
            module: SearchModule(), transition: TransitionType.downToUp),
        ModuleRoute('/results', module: ResultsModule()),
        ModuleRoute('/doctor', module: DoctorModule()),
        ModuleRoute('/onboarding', module: OnboardingModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
