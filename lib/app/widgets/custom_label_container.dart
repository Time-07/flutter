import 'package:flutter/material.dart';

class CustomLabelContainer extends StatelessWidget {
  const CustomLabelContainer(
      {Key? key, required this.text, this.checkMark = false})
      : super(key: key);

  final String text;
  final bool checkMark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4,
        ),
        child: Row(
          children: [
            checkMark ? const Icon(Icons.check) : Container(),
            Text(
              text,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
