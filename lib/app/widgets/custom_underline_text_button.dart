import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomUnderlineTextButton extends StatelessWidget {
  const CustomUnderlineTextButton(
      {Key? key, required this.rota, required this.texto})
      : super(key: key);
  final String texto;
  final String rota;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {
        Modular.to.navigate(rota);
      },
      child: Text(
        texto,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Colors.black.withOpacity(0.5),
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}
