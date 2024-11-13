// A classe PET tem seus atributos e métodos

import 'atendente.dart';
import 'pet.dart';

void main() {
  Pet pet1 = Pet('Rex', 2, PetType.DOG, 'Marrom');
  var pet2 = Pet('Mia', 1, PetType.CAT, 'Branco');
  final pet3 = Pet('Piu Piu', 1, PetType.BIRD, 'Amarelo');

  List<Pet> pets = [pet1, pet2, pet3];

  Atendente atendente1 = Atendente.fromJson({
    'nome': 'João',
    'cpf': '12312321321',
    'email': 'email@email.com',
    'telefone': '+54432321312312',
    'endereco': 'Rua dos alves',
  });
  
  atendente1.addPets(pets);
  // print(atendente1.getPets());
  //pet1.tomarBanho(atendente1);
  print(pet1.getUltimoAtendente());

}
