import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    required this.validar,
    this.autovalidar = false,
    this.textInput = TextInputType.text,
  }) : super(key: key);

  final String labelText;
  final bool obscureText;
  final bool autovalidar;
  final Function validar;
  final TextInputType textInput;

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
          errorMaxLines: 6,
          labelText: labelText,
          labelStyle: const TextStyle(color: Color(0xFFA4A4A4)),
          border: const OutlineInputBorder(),
        ),
        keyboardType: textInput);
  }
}
