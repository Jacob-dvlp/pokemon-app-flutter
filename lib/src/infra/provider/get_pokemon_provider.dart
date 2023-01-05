import '../interface/get_pokemon_i.dart';
import '../model/result_type_pokemon.dart';

class GetPokemonProvider {
  final GetPokemonI getPokemonI;
  GetPokemonProvider({
    required this.getPokemonI,
  });

  Future<List<ResultTypePokemon>> getCategory() async {
    return await getPokemonI.getCategory();
  }
}
