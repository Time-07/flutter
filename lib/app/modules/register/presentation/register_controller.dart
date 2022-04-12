import '../domain/usecases/register.dart';

class RegisterController {
  String nome = '';
  String email = '';
  String senha = '';
  String identidade = '';
  final IRegister _register;

  RegisterController({required IRegister register,
  }) : _register = register;

  String? verificaNome(String? nomeDigitado) {
    if (nomeDigitado == null || nomeDigitado == '') {
      return '\u26A0 Digite seu nome';
    }

    nome = nomeDigitado;
    return null;
  }

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

  String? verificaSenhaForte(String? senhaDigitada) {
    String saida = '';
    if (senhaDigitada == null || senhaDigitada.isEmpty) {
      return '\u26A0 Digite sua senha';
    }

    if (!RegExp(r"(?=.*[A-Z])").hasMatch(senhaDigitada)) {
      saida += '\u26A0 A senha deve conter ao menos uma letra maiúscula!\n';
    }

    if (!RegExp(r"(?=.*[0-9])").hasMatch(senhaDigitada)) {
      saida += '\u26A0 A senha deve conter ao menos um número!\n';
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

    senha = senhaDigitada;
    return null;
  }

  String? confirmaSenha(String? confirmacaoSenhaDigitada) {
    if (confirmacaoSenhaDigitada == null || confirmacaoSenhaDigitada == '') {
      return '\u26A0 Campo obrigatório!\n';
    }

    if (senha != confirmacaoSenhaDigitada) {
      return '\u26A0 As senhas não coincidem!\n';
    }
    return null;
  }

  String? validarIdentidade(String? identidadeSelecionada) {
    if (identidadeSelecionada == null || identidadeSelecionada == '') {
      return '\u26A0 Campo obrigatório!\n';
    }
    identidade = identidadeSelecionada;
    return null;
  }

  register(){
    //TODO: cpf não está vindo do front
    //TODO: chamar o modular navigate dentro do try
    try{
      var usuarioCadastrado = _register.call(nome, '', email, senha, identidade);
      print(usuarioCadastrado);
    }on Exception catch(_){
            throw Exception("Cadastro não realizado");
    }
  }
}
