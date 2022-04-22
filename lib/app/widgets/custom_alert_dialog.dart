import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    Key? key,
    required this.tittle,
    required this.description,
    required this.callback,
    required this.accept,
    required this.cancel,
  }) : super(key: key);

  final String tittle;
  final String description;
  final Function callback;
  final String accept;
  final String cancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        tittle,
        style: Theme.of(context).textTheme.headline3,
      ),
      content: Text(
        description,
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  accept,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              onPressed: () {
                callback();
              },
            ),
            ElevatedButton(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  cancel,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )
      ],
    );
  }
}
