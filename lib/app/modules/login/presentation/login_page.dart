import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/presentation/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("Login"),
      ),
    );
  }
}
