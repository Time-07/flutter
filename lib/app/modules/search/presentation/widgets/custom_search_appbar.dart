import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/widgets/custom_alert_dialog.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSearchAppBar({
    Key? key,
    this.height = kToolbarHeight,
    required this.tittle,
  }) : super(key: key);
  final double height;
  final String tittle;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: Text(
        tittle,
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: [
        IconButton(
            //TODO: Adicionar navegação
            onPressed: () {
              print('hello');
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => CustomAlertDialog(
                        tittle: 'Cancelar pesquisa',
                        description:
                            'Gostaria de cancelar a pesquisa atual e voltar ao início?',
                        callback: () {
                          Modular.to.popAndPushNamed('/home');
                        },
                      ));
            },
            icon: const Icon(
              Icons.close,
              color: Color(0xFF111111),
            ))
      ],
    );
  }
}
