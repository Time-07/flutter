import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.texto,
    required this.formKey,
  }) : super(key: key);

  final String texto;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size(256, 64)),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Funcionou')),
          );
        }
      },
      child: Text(
        texto,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
