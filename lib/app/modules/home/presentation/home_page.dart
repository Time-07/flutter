import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        height: 90,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Profissionais aliados e aliadas',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Use o botão Pesquisar para encontrar profissionais que se cadastraram com o compromisso de tratar (bem) pacientes trans.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                indent: 25,
                endIndent: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(165, 60),
                ),
                onPressed: () {
                  Modular.to.navigate('/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.manage_search_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      'Pesquisar',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
