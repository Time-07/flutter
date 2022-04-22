import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSearchAppBar({
    Key? key,
    this.height = kToolbarHeight,
  }) : super(key: key);
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: Text(
        'Pesquisa',
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: [
        IconButton(
            //TODO: Adicionar navegação
            onPressed: () {},
            //TODO: Padronizar cor
            icon: const Icon(
              Icons.close,
              color: Color(0xFF111111),
            ))
      ],
    );
  }
}
