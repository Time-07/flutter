import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    required this.validar,
    this.autovalidar = false,
  }) : super(key: key);

  final String labelText;
  final bool obscureText;
  final bool autovalidar;
  final Function validar;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      obscureText: obscureText,
      autovalidateMode: autovalidar == true
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      name: labelText,
      validator: (value) {
        return validar(value);
      },
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Color(0xFFA4A4A4)),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
