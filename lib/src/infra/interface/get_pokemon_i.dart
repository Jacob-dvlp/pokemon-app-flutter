import 'imports.dart';

abstract class GetPokemonI {
  Future<List<CardModel>> getPokemon();
  Future<List<ResultTypePokemon>> getType();
}
