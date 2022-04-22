import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/widgets/custom_elevated_button.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({
    Key? key,
    required this.tittleText,
    required this.imageLink,
    required this.bodyText,
    this.lastPage = false,
  }) : super(key: key);

  final String tittleText;
  final String imageLink;
  final String bodyText;
  final bool lastPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tittleText,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
          Image(image: AssetImage(imageLink)),
          Text(
            bodyText,
            style: Theme.of(context).textTheme.headline6,
          ),
          lastPage
              ? Column(
                  children: [
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                        texto: 'Cadastro',
                        onPressedCall: () {
                          Modular.to.navigate('/register');
                        }),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
