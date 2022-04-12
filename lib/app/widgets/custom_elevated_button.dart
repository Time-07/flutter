import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomElevatedButton extends StatelessWidget {

  const CustomElevatedButton({
    Key? key,
    required this.texto,
    required this.formKey,
    required this.onPressedCall,
  }) : super(key: key);

  final String texto;
  final Function onPressedCall;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size(256, 64)),
      onPressed: () {
        formKey.currentState!.save();
        if (formKey.currentState!.validate()) {
          onPressedCall.call();
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
