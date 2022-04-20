import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';
import 'package:trans_app/app/modules/login/domain/usecases/login.dart';
import 'package:trans_app/common/enums/status.dart';

class LoginController {
  String email = "";
  String senha = "";
  final ILogin _login;
  UserEntity usuarioLogado = UserEntity(email: "", password: "");
  //criar enum loginStatus
  final ValueNotifier<Status> loginStatus = ValueNotifier(Status.none);

  LoginController({required ILogin login,
  }) : _login = login;

  String? verificaEmailValido(String? emailDigitado) {
    if (emailDigitado == null || emailDigitado.isEmpty) {
      return '\u26A0 Digite seu email';
    }

    //A expressão regular abaixo filtra emails não válidos
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailDigitado)) {
      return '\u26A0 Email inválido!';
    }

    email = emailDigitado;
    return null;
  }

  String? verificaSenha(String? senhaDigitada) {
    if (senhaDigitada == null || senhaDigitada.isEmpty) {
      return '\u26A0 Digite sua senha';
    }

    senha = senhaDigitada;
    return null;
  }

  login(){
    //TODO: chamar o modular navigate dentro do try
    try{
      loginStatus.value = Status.loading;
      usuarioLogado = _login.call(email, senha) as UserEntity;
      loginStatus.value = Status.succes;
      Modular.to.navigate('/home');
    }catch(_){
      //mostrar mensagem falha ao realizar login
      //loginstatus.error
      loginStatus.value = Status.error;
    }
  }
}
