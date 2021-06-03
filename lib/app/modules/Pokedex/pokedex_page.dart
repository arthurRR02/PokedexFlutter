import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/Pokedex/components/custom_card.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';
import 'package:pokedex/app/shared/repositories/pokemon_repository.dart';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexPageState createState() => _PokedexPageState();
}

class _PokedexPageState extends ModularState<PokedexPage, PokedexController> {
  final repository = Modular.get<PokemonRepository>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Modular.to.pop(),
        )
          ),
      body: Container(
        child: Observer(builder: (_) { 
           if(controller.pokemons == null){
            return Center(
              child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.red)),
            );
          } else {
            return CustomCard();
              }
        }),
      ),
    );
  }
}
