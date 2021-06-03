// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokedexController on _PokedexControllerBase, Store {
  final _$pokemonsAtom = Atom(name: '_PokedexControllerBase.pokemons');

  @override
  PokeJson? get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(PokeJson? value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$colorAtom = Atom(name: '_PokedexControllerBase.color');

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  final _$savedIndexAtom = Atom(name: '_PokedexControllerBase.savedIndex');

  @override
  int get savedIndex {
    _$savedIndexAtom.reportRead();
    return super.savedIndex;
  }

  @override
  set savedIndex(int value) {
    _$savedIndexAtom.reportWrite(value, super.savedIndex, () {
      super.savedIndex = value;
    });
  }

  final _$_PokedexControllerBaseActionController =
      ActionController(name: '_PokedexControllerBase');

  @override
  dynamic fetchPokemons() {
    final _$actionInfo = _$_PokedexControllerBaseActionController.startAction(
        name: '_PokedexControllerBase.fetchPokemons');
    try {
      return super.fetchPokemons();
    } finally {
      _$_PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons},
color: ${color},
savedIndex: ${savedIndex}
    ''';
  }
}
