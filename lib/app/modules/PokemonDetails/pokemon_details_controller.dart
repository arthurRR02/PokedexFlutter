import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';
part 'pokemon_details_controller.g.dart';

class PokemonDetailsController = _PokemonDetailsControllerBase with _$PokemonDetailsController;

abstract class _PokemonDetailsControllerBase with Store {
  final pokedexController = Modular.get<PokedexController>();
  
  @observable
  int indexPage = 0; 
}