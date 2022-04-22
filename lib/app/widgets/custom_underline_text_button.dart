import 'package:flutter/material.dart';

class CustomUnderlineTextButton extends StatelessWidget {
  const CustomUnderlineTextButton({
    Key? key,
    required this.callback,
    required this.texto,
  }) : super(key: key);
  final String texto;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () => callback(),
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
