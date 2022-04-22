import 'package:flutter/material.dart';

class NoDoctorsFound extends StatelessWidget {
  const NoDoctorsFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Theme.of(context).colorScheme.primary,
                    spreadRadius: 1)
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 100,
              backgroundImage: AssetImage('assets/nao_encontrado.png'),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Infelizmente ainda não temos resultados para esses critérios ou localização.\n\nEstamos trabalhando para que cada vez mais profissionais estejam disponíveis na plataforma.\n\nEnquanto isso, que tal tentar uma nova pesquisa? Obrigado pela paciência!',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
