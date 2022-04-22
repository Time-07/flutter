import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/widgets/custom_alert_dialog.dart';
import 'package:trans_app/app/widgets/custom_underline_text_button.dart';
import 'package:trans_app/app/widgets/logo.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.height = kToolbarHeight,
  }) : super(key: key);
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Theme.of(context).colorScheme.primary,
          height: preferredSize.height,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const Expanded(
                  //TODO: Componentizar
                  child: Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: SizedBox(
                      height: 60,
                      child: Logo(
                        tamanho: 48,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Fulano',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    CustomUnderlineTextButton(
                      callback: () {
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>
                                CustomAlertDialog(
                                  tittle: 'Sair do app',
                                  description:
                                      'Gostaria de encerrar sua sessão? Selecionando “Sim” você retornará à tela de login.',
                                  callback: () {
                                    //TODO: Tirar o usuário do app
                                    Modular.to.navigate('/login');
                                  },
                                ));
                      },
                      texto: 'Sair',
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
