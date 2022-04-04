import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

//TODO: Devolver valor para o controller

class CustomRadialList extends StatelessWidget {
  const CustomRadialList({
    Key? key,
    required this.opcoes,
    required this.identidadeSelecionada,
    required this.titulo,
    required this.validar,
  }) : super(key: key);
  final List<String> opcoes;
  final String titulo;
  final ValueNotifier<String> identidadeSelecionada;
  final String? Function(String?) validar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20),
      child: FormBuilderRadioGroup(
        decoration: InputDecoration(
          labelText: 'Você se identifica como:',
          labelStyle: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: const Color(0xFFA4A4A4)),
        ),
        name: 'RadioList',
        activeColor: Colors.black,
        validator: validar,
        options: opcoes
            .map((valor) => FormBuilderFieldOption(
                  value: valor,
                  child: Text(valor),
                ))
            .toList(growable: false),
      ),
    );
  }
}
