import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.radius}) : super(key: key);
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      //TODO: Adicionar imagem
      backgroundColor: const Color(0xFFC4C4C4),
    );
  }
}
