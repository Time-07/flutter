import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/presentation/login_controller.dart';
import 'package:trans_app/app/widgets/custom_elevated_button.dart';
import 'package:trans_app/app/widgets/custom_text_form_field.dart';
import 'package:trans_app/app/widgets/custom_underline_text_button.dart';
import 'package:trans_app/app/widgets/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Logo(
                tamanho: 120,
              ),
              const SizedBox(height: 24),
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        labelText: 'email',
                        validar: controller.verificaEmailValido,
                        textInput: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 15),
                      CustomTextFormField(
                        labelText: 'senha',
                        validar: controller.verificaSenha,
                        obscureText: true,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: CustomUnderlineTextButton(
                        rota: '/',
                        texto: 'Esqueci minha senha',
                      )),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: CustomElevatedButton(
                    texto: 'Entrar',
                    onPressedCall: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        controller.login.call();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Funcionou')),
                        );
                      }
                    }),
              ),
              const SizedBox(height: 10),
              Text(
                'Ainda não tem uma conta?',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomUnderlineTextButton(
                rota: '/register',
                texto: 'Cadastre-se!',
              )
            ],
          ),
        ),
      ),
    );
  }
}
