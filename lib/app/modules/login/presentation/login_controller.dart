class LoginController {
  String email = "";
  String senha = "";

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
}
