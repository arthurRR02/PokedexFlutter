import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/Home/home_controller.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final pokedexController = Modular.get<PokedexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokédex",
        style: TextStyle(
          fontFamily: "Pokemon",
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("src/images/pokedex_logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed("/pokedex");
                    pokedexController.fetchPokemons();
                  }, 
                  child: Text("Carregar Pokémons",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
