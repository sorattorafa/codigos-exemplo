Future<void> main() async {
  Usuario usuario = Usuario('Rafael');
  usuario.setIdade(18);

  final loginResult = await login(usuario);

  if (loginResult == true) {
    print('Usuário logado com sucesso');
    print('Token: ${usuario.getToken}');
  } else {
    print('Usuário não logado');
    print('Token: ${usuario.getToken}');
  }
}

Future<bool> login(Usuario usuario) async {
  try {
    // simula uma conexão com o banco de dados
    final token = await connectionDb();

    if (token.isNotEmpty) {
      usuario.setToken(token);
      return true;
    }

    return false;
  } catch (e) {
    return false;
  }
}

Future<String> connectionDb() async {
  // throw Exception('Erro ao conectar com o banco de dados');
  await Future.delayed(Duration(seconds: 5));
  return 'fake-token';
}

class Usuario {
  String nome;
  late int idade;
  String? token;

  Usuario(this.nome);

  void setToken(String token) {
    this.token = token;
  }

  String? get getToken => token;

  void setIdade(int idade) {
    this.idade = idade;
  }

  int get getIdade => idade;

  bool get maiorIdade => idade >= 18;
}
