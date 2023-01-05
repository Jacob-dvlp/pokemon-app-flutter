import '../model/result_type_pokemon.dart';

abstract class GetPokemonI {
  Future<List<ResultTypePokemon>> getPokemon();
  Future<List<ResultTypePokemon>> getCategory();
}
