import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/search/presentation/search_controller.dart';
import 'package:trans_app/app/modules/search/presentation/widgets/Custom_list_view.dart';
import 'package:trans_app/app/modules/search/presentation/widgets/custom_search_appbar.dart';
import 'package:trans_app/app/utils/mock_doctors.dart';
import 'package:trans_app/common/widgets/custom_elevated_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  List<String> specialty = [
    'Todas',
    'Psicologia',
    'Endocrinologia',
    'Urologia',
    'Ginecologia',
    'Proctologia'
  ];

  List<String> gender = [
    'Todos',
    'Mulher Cis',
    'Mulher Trans',
    'Homem Cis',
    'Homem Trans',
    'Pessoa Trans Não Binária'
  ];

  @override
  void initState() {
    controller.specialty.value = 'Todas';
    controller.gender.value = 'Todos';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSearchAppBar(tittle: 'Pesquisa'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Especialidade',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 16),
              CustomListView(
                list: specialty,
                option: controller.specialty,
              ),
              const SizedBox(height: 16),
              Text(
                'Localização',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: (text) {
                  controller.city = text;
                },
                decoration: const InputDecoration(
                    errorMaxLines: 6,
                    labelText: 'Cidade (opcional)',
                    labelStyle: TextStyle(color: Color(0xFFA4A4A4)),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search)),
              ),
              Text(
                'Gênero',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 16),
              CustomListView(
                list: gender,
                option: controller.gender,
              ),
              const SizedBox(height: 16),
              Text(
                'Busca por nome',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: (text) {
                  controller.name = text;
                },
                decoration: const InputDecoration(
                    errorMaxLines: 6,
                    labelText: 'Nome (opcional)',
                    labelStyle: TextStyle(color: Color(0xFFA4A4A4)),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search)),
              ),
              const SizedBox(height: 30),
              CustomElevatedButton(
                  texto: 'Pesquisar',
                  onPressedCall: () {
                    Modular.to
                        .navigate('/results', arguments: MockDoctors().list);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
