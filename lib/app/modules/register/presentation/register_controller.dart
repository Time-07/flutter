class RegisterController {
  String? verificaSenha2(String? senhaDigitada) {
    String saida = '';
    if (senhaDigitada == null || senhaDigitada.isEmpty) {
      return '\u26A0 Digite sua senha';
    }

    if (!RegExp(r"(?=.*[A-Z])").hasMatch(senhaDigitada)) {
      saida += '\u26A0 A senha deve conter ao menos uma letra maiúscula!\n';
    }

    if (!RegExp(r"(?=.*[0-9])").hasMatch(senhaDigitada)) {
      saida += '\u26A0 A senha deve conter ao menos uma número!\n';
    }

    if (!RegExp(r"(?=.*[-+_!@#$%^&*., ?])").hasMatch(senhaDigitada)) {
      saida += '\u26A0 A senha deve conter ao menos uma caractere especial!\n';
    }

    if (senhaDigitada.length < 8) {
      saida += '\u26A0 A senha deve conter ao menos 8 digitos!\n';
    }

    if (saida != '') {
      return saida;
    }

    //senha = senhaDigitada;
    return null;
  }
}
