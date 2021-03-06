import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/register/presentation/register_controller.dart';
import 'package:trans_app/common/widgets/custom_elevated_button.dart';
import 'package:trans_app/common/widgets/custom_radial_list.dart';
import 'package:trans_app/common/widgets/custom_text_form_field.dart';
import 'package:trans_app/common/widgets/custom_underline_text_button.dart';
import 'package:trans_app/common/widgets/logo.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
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
                  const Logo(tamanho: 120),
                  const SizedBox(height: 24),
                  Text(
                    'Cadastro',
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
                              labelText: 'Como posso te chamar?',
                              validar: controller.verificaNome,
                              textInput: TextInputType.name,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '*Nome pelo qual voc?? se identifica',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            CustomTextFormField(
                              labelText: 'Qual ?? o seu email?',
                              autovalidar: true,
                              validar: controller.verificaEmailValido,
                              textInput: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 15),
                            CustomTextFormField(
                              labelText: 'Qual ?? o seu cpf?',
                              autovalidar: true,
                              validar: controller.verificaCPFValido,
                              textInput: TextInputType.number,
                            ),
                            const SizedBox(height: 15),
                            CustomTextFormField(
                              obscureText: true,
                              autovalidar: true,
                              labelText: 'Escolha uma senha forte',
                              validar: controller.verificaSenhaForte,
                            ),
                            const SizedBox(height: 15),
                            CustomTextFormField(
                              obscureText: true,
                              autovalidar: true,
                              labelText: 'Confirme sua senha',
                              validar: controller.confirmaSenha,
                            ),
                            const SizedBox(height: 15),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFA4A4A4),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: CustomRadialList(
                                  validar: controller.validarIdentidade,
                                  opcoes: const [
                                    'Mulher Trans',
                                    'Homem Trans',
                                    'Pessoa Trans N??o-bin??ria',
                                    'Outra Identidade'
                                  ],
                                  titulo: 'Voc?? se identifica como:',
                                )),
                          ],
                        )),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Ao se cadastrar voc?? concorda com nossos',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  CustomUnderlineTextButton(
                    callback: () {
                      Modular.to.navigate('/');
                    },
                    texto: 'Termos de Uso.',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: CustomElevatedButton(
                        texto: 'Entrar',
                        onPressedCall: () {
                          _formKey.currentState!.save();
                          if (_formKey.currentState!.validate()) {
                            controller.register();
                          }
                        }),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'J?? tem uma conta?',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  CustomUnderlineTextButton(
                    callback: () {
                      Modular.to.navigate('/login');
                    },
                    texto: 'Fa??a login',
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            )));
  }
}
