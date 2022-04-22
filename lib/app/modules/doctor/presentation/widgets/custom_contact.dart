import 'package:flutter/material.dart';

class CustomContact extends StatelessWidget {
  const CustomContact({
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
        Icon(icon),
        Text(' $text', style: Theme.of(context).textTheme.headline5)
      ],
    );
  }
}
