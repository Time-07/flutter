import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.texto,
    required this.formKey,
    required this.rota,
  }) : super(key: key);

  final String texto;
  final GlobalKey<FormState> formKey;
  final String rota;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size(256, 64)),
      onPressed: () {
        formKey.currentState!.save();
        if (formKey.currentState!.validate()) {
          Modular.to.navigate(rota);
        }
      },
      child: Text(
        texto,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
