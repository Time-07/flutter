import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/onboarding/presentation/onboarding_controller.dart';
import 'package:trans_app/app/modules/onboarding/presentation/widgets/custom_page.dart';
import 'package:trans_app/common/widgets/custom_underline_text_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState
    extends ModularState<OnboardingPage, OnboardinController> {
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];

    for (int i = 0; i < controller.totalPages; i++) {
      list.add(
          i == controller.currentPage ? _indicator(true) : _indicator(false));
    }

    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: isActive
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 296,
              height: 540,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: controller.pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          controller.currentPage = page;
                        });
                      },
                      children: const [
                        CustomPage(
                            tittleText: 'Oi! Que bom te ver aqui! 😉',
                            imageLink: 'assets/onboarding1.png',
                            bodyText:
                                'Estamos reunindo no DiverSaúde profissionais de saúde que respeitam a comunidade trans e as suas diversas identidades. '),
                        CustomPage(
                            tittleText: 'Já conhece nossa missão?',
                            imageLink: 'assets/onboarding2.png',
                            bodyText:
                                'Esperamos que por aqui você possa encontrar atendimento médico e psicológico com pessoas que respeitam quem você é.'),
                        CustomPage(
                            lastPage: true,
                            tittleText: 'Então vamos começar!',
                            imageLink: 'assets/onboarding3.png',
                            bodyText:
                                'Cadastre-se já e acesse a nossa lista de profissionais.'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Já tem uma conta?',
              style: Theme.of(context).textTheme.headline6,
            ),
            CustomUnderlineTextButton(
              callback: () {
                Modular.to.navigate('/login');
              },
              texto: 'Faça login',
            )
          ],
        ),
      ),
    );
  }
}
