import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/common/widgets/custom_elevated_button.dart';

class PrePesquisa extends StatelessWidget {
  const PrePesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text(
            'Profissionais de saúde',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Use o botão “Pesquisar” para encontrar profissionais que se cadastraram com o compromisso de tratar pacientes trans com respeito.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Divider(
            color: Colors.black,
            height: 30,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          CustomElevatedButton(
            texto: 'Pesquisar',
            icone: Icons.person_search,
            onPressedCall: () {
              Modular.to.navigate('/search');
            },
          ),
          const SizedBox(height: 15),
          const Image(image: AssetImage('assets/doctor_home.png')),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
