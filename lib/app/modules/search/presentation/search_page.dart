import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/search/presentation/search_controller.dart';
import 'package:trans_app/app/modules/search/presentation/widgets/Custom_list_view.dart';
import 'package:trans_app/app/modules/search/presentation/widgets/custom_search_appbar.dart';
import 'package:trans_app/app/widgets/custom_text_form_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  @override
  void initState() {
    controller.especialidade = 'Todas';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> especialidade = [
      'Todas',
      'Psicologia',
      'Endocrinologia',
      'Urologia',
      'Ginecologia',
      'Proctologia'
    ];

    return Scaffold(
      appBar: const CustomSearchAppBar(),
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
                list: especialidade,
                controller: controller,
              ),
              const SizedBox(height: 16),
              Text(
                'Localização',
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
