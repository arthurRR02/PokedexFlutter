import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/app/shared/models/poke_json.dart';
import 'package:pokedex/app/shared/repositories/pokemon_repository.dart';
part 'pokedex_controller.g.dart';

class PokedexController = _PokedexControllerBase with _$PokedexController;

abstract class _PokedexControllerBase with Store {
  final repository = Modular.get<PokemonRepository>();

  @observable
  PokeJson? pokemons;
  @observable
  late Color color;
  @observable
  int savedIndex = 0;
  

  @action
  fetchPokemons() {
    repository.getAllPokemons().then((pokeList) {
      pokemons = pokeList;
    });
  }
   setColor(String type) {
    switch (type) {
      case "Normal":
        return Colors.brown[400];
      case "Fire":
        return Colors.red;
      case "Water":
        return Colors.blue;
      case "Grass":
        return Colors.green;
      case "Electric":
        return Colors.amber;
      case "Ice":
        return Colors.cyanAccent[400];
      case "Fighting":
        return Colors.orange;
      case "Poison":
        return Colors.purple;
      case "Ground":
        return Colors.orange[300];
      case "Flying":
        return Colors.indigo[200];
      case "Psychic":
        return Colors.pink;
      case "Bug":
        return Colors.lightGreen[500];
      case "Rock":
        return Colors.grey;
      case "Ghost":
        return Colors.indigo[400];
      case "Dark":
        return Colors.brown;
      case "Dragon":
        return Colors.indigo[800];
      case "Steel":
        return Colors.blueGrey;
      case "Fairy":
        return Colors.pinkAccent[100];
      default:
        return Colors.grey;
    }
  }

   setColorType(String type) {
    switch (type) {
      case "Normal":
        return Colors.brown[400]!.withOpacity(0.6);
      case "Fire":
        return Colors.red.withOpacity(0.6);
      case "Water":
        return Colors.blue.withOpacity(0.6);
      case "Grass":
        return Colors.green.withOpacity(0.6);
      case "Electric":
        return Colors.amber.withOpacity(0.6);
      case "Ice":
        return Colors.cyanAccent[400]!.withOpacity(0.6);
      case "Fighting":
        return Colors.orange.withOpacity(0.6);
      case "Poison":
        return Colors.purple.withOpacity(0.6);
      case "Ground":
        return Colors.orange[300]!.withOpacity(0.6);
      case "Flying":
        return Colors.indigo[200]!.withOpacity(0.6);
      case "Psychic":
        return Colors.pink.withOpacity(0.6);
      case "Bug":
        return Colors.lightGreen[500]!.withOpacity(0.6);
      case "Rock":
        return Colors.grey.withOpacity(0.6);
      case "Ghost":
        return Colors.indigo[400]!.withOpacity(0.6);
      case "Dark":
        return Colors.brown.withOpacity(0.6);
      case "Dragon":
        return Colors.indigo[800]!.withOpacity(0.6);
      case "Steel":
        return Colors.blueGrey.withOpacity(0.6);
      case "Fairy":
        return Colors.pinkAccent[100]!.withOpacity(0.6);
      default:
        return Colors.grey.withOpacity(0.6);
    }
  }

   Widget getImage(String numero) {
    return Image.network(
        "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png",
    );
  }
}