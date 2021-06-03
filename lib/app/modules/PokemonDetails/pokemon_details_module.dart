import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';
import 'package:pokedex/app/modules/PokemonDetails/pokemon_details_controller.dart';
import 'package:pokedex/app/modules/PokemonDetails/pokemon_details_page.dart';

class PokemonDetailsModule extends Module{

 @override
 final List<Bind> binds = [
   Bind.singleton((i) => PokemonDetailsController()),
   Bind.singleton((i) => PokedexController()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => PokemonDetailsPage()),
 ]; 
}