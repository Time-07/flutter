import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    Key? key,
    required this.tittle,
    required this.description,
    required this.callback,
  }) : super(key: key);

  final String tittle;
  final String description;
  final Function callback;

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
                  'Sim',
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
                  'Não',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )
      ],
    );
  }
}
