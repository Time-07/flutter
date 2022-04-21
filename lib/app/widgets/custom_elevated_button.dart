import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.texto,
    required this.onPressedCall,
    this.icone,
  }) : super(key: key);

  final String texto;
  final Function onPressedCall;
  final IconData? icone;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(256, 64),
          primary: Theme.of(context).colorScheme.tertiary,
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          )),
      //TODO: Corrigir chamada para aceitar argumento
      onPressed: () => onPressedCall(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: Corrigir cor
          icone != null
              ? Icon(
                  icone,
                  color: Colors.black,
                )
              : Container(),
          Text(
            texto,
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
