import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/onboarding/presentation/onboarding_controller.dart';
import 'package:trans_app/app/modules/onboarding/presentation/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => OnboardinController(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const OnboardingPage()),
      ];
}
