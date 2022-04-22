import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.tamanho}) : super(key: key);

  final double tamanho;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: tamanho,
        height: tamanho,
        child: const Image(
          image: AssetImage('assets/medium_logo.png'),
        ));
  }
}
