import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.tamanho}) : super(key: key);

  final double tamanho;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tamanho,
      height: tamanho,
      child: const CircleAvatar(
        //TODO: Adicionar imagem
        backgroundColor: Color(0xFFC4C4C4),
      ),
    );
  }
}
