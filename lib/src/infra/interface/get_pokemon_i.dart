import '../model/result_pokemon.dart';
import '../model/result_type_pokemon.dart';

abstract class GetPokemonI {
  Future<List<CardModel>> getPokemon();
  Future<List<ResultTypePokemon>> getType();
}
