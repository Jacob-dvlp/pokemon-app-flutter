import '../model/model_result_details_pokemon.dart';
import 'imports.dart';

abstract class GetPokemonI {
  Future<List<CardModel>> getPokemons({int pageNumber = 0});
  Future<Pokemon> getPokemonById({String id});
  Future<List<ResultTypePokemon>> getTypes();
}
