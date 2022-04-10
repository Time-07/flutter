import 'package:flutter/material.dart';
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
          height: preferredSize.height,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(radius: 24),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Fulano',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const CustomUnderlineTextButton(rota: '/', texto: 'Sair')
                  ],
                )
              ],
            ),
          )),
    );
  }
}
