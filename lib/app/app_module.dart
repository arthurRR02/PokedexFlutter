import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/app_controller.dart';
import 'package:pokedex/app/modules/Home/home_module.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_module.dart';
import 'package:pokedex/app/shared/repositories/pokemon_repository.dart';
import 'modules/PokemonDetails/pokemon_details_module.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppController()),
    Bind.singleton((i) => PokemonRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute("/pokedex", module: PokedexModule()),
    ModuleRoute("/details", module: PokemonDetailsModule())
  ];
}