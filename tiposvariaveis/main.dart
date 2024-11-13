// Exemplo da conta bancária

void main() {
  final user1 = Usuario('Rafael', 26);

  user1.balance.deposit(100);
  user1.balance.withdraw(50);

  print(user1.getBalance);

}

class Usuario {
  String nome;
  int idade;
  Balance balance = Balance(0);

  Usuario(this.nome, this.idade);

  @override
  String toString() {
    return 'Nome: $nome, Idade: $idade, ${balance.toString()}';
  }

  int get getIdade => idade;

  double get getBalance => balance.value;
}

class Balance {
  double value;

  Balance(this.value);

  void deposit(double value) {
    this.value += value;
  }

  void withdraw(double value) {
    this.value -= value;
  }

  @override
  String toString() {
    return 'Saldo: $value';
  }
}
