import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Text(
                'Sobre',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 10),
              Text(
                'DiverSaúde é uma iniciativa criada para conectar pessoas trans aos profissionais da saúde interessados(as) em oferecer um tratamento digno, diminuindo a violência sofrida por essas pessoas.\n\nO aplicativo segue em desenvolvimento e contará com mais funcionalidades no futuro, pensando sempre em facilitar o acesso à saúde para a comunidade trans e não binária.',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              const Image(image: AssetImage('assets/logo_small_with_text.png')),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fale conosco',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 8),
                Text(
                  'Tem alguma dúvida ou feedback?\nfale conosco pelo email\ncontato@diversaude.com.br',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
