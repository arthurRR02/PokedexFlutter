import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/Home/home_controller.dart';
import 'package:pokedex/app/modules/Home/home_page.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_page.dart';

class HomeModule extends Module{

 @override
 final List<Bind> binds = [
   Bind.singleton((i) => HomeController()),
   Bind.singleton((i) => PokedexController()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
   ChildRoute("/pokedex", child: (_, __) => PokedexPage())
 ]; 
}