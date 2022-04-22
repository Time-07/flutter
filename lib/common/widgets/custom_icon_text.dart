import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
  const CustomIconText({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 40,
          color: Theme.of(context).colorScheme.inverseSurface,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headline6,
        )
      ],
    );
  }
}
