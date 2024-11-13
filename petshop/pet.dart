
import 'atendente.dart';

enum PetType { DOG, CAT, BIRD, FISH, RABBIT }

class Pet {
  String name;
  String color;
  PetType type;
  int age;
  bool isHungry = false;
  bool isClean = false;
  String? ultimoAtendente;

  Pet(this.name, this.age, this.type, this.color);

  @override
  String toString() {
    return 'Pet{name: $name, color: $color, type: $type, age: $age, isHungry: $isHungry}';
  }

  void comer() {
    print('O pet $name está comendo');
    isHungry = false;
  }

  void correr() {
    print('O pet $name está correndo');
    isHungry = true;
    isClean = false;
  }

  void tomarBanho(Atendente atendente) {
    print('O pet $name está tomando banho');
    isClean = true;
    ultimoAtendente = atendente.nome;
  }

  void showPet() {
    print('Nome: $name');
    print('Idade: $age');
    print('Tipo: $type');
    print('Cor: $color');
    print('Está com fome? $isHungry');
  }

  // nullable string
  String? getUltimoAtendente() {
    return ultimoAtendente;
  }
}