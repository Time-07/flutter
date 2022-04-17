import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/login/domain/usecases/login.dart';

class LoginController {
  String email = "";
  String senha = "";
  final ILogin _login;

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
    //TODO: cpf não está vindo do front
    //TODO: chamar o modular navigate dentro do try
    
    try{
      var usuarioLogado = _login.call(email, senha);
      print(usuarioLogado);
      Modular.to.navigate('/home');
    }on Exception catch(_){
      throw Exception("Usuario não encontrado");
    }
  }
}
