import 'package:pokedex/app/shared/models/pokemon_model.dart';

class PokeJson {
   List<Pokemon>? pokemon;

  PokeJson({this.pokemon});

  PokeJson.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null) {
      pokemon =  <Pokemon>[];
      json['pokemon'].forEach((v) {
        pokemon!.add(new Pokemon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


