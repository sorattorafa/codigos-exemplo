import 'pet.dart';

class Atendente {
  String nome;
  String cpf;
  String email;
  String telefone;
  String endereco;
  var pets = <Pet>[];

  Atendente({
    required this.nome,
    required this.cpf,
    required this.email,
    required this.telefone,
    required this.endereco,
  });

  void addPet(Pet pet) {
    this.pets.add(pet);
  }

  void addPets(List<Pet> pets) {
    this.pets.addAll(pets);
  }

  String getPets() {
    String pets = '';
    for (var pet in this.pets) {
      pets += pet.toString() + '\n';
    }
    return pets;
  }

  @override
  String toString() {
    return 'Atendente{nome: $nome, cpf: $cpf, email: $email, telefone: $telefone, endereco: $endereco}';
  }

  factory Atendente.fromJson(Map<String, dynamic> json) {
    return Atendente(
      nome: json['nome'],
      cpf: json['cpf'],
      email: json['email'],
      telefone: json['telefone'],
      endereco: json['endereco'],
    );
  }

  Map<String, dynamic> toJson() => {
        'nome': nome,
        'cpf': cpf,
        'email': email,
        'telefone': telefone,
        'endereco': endereco,
      };
}
