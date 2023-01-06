import '../interface/get_pokemon_i.dart';
import '../model/result_pokemon.dart';
import '../model/result_type_pokemon.dart';

class GetPokemonProvider {
  final GetPokemonI getPokemonI;
  GetPokemonProvider({
    required this.getPokemonI,
  });
  Future<ResultApiPokemon> getPokemon() async {
    return await getPokemonI.getPokemon();
  }

  Future<List<ResultTypePokemon>> getCategory() async {
    return await getPokemonI.getCategory();
  }
}
