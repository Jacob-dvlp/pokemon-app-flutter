import '../model/result_pokemon.dart';
import '../model/result_type_pokemon.dart';

abstract class GetPokemonI {
  Future<ResultApiPokemon> getPokemon();
  Future<List<ResultTypePokemon>> getCategory();
}
