import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/models/poke_json.dart';
import 'package:pokedex/app/shared/utils/constants.dart';

class PokemonRepository {
  Dio dio = Dio();
  
 

  Future<PokeJson> getAllPokemons() async {
    final response = await dio.get(url_base);
    var decodeJson = jsonDecode(response.data);
    return PokeJson.fromJson(decodeJson);
  }

  
}