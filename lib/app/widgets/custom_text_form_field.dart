import 'package:flutter/material.dart';
import 'package:trans_app/app/modules/login/presentation/login_controller.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    required this.validar,
  }) : super(key: key);

  final String labelText;
  final bool obscureText;
  final Function validar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          return validar(value);
        },
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
