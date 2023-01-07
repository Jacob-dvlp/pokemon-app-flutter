import '../interface/get_pokemon_i.dart';
import '../model/result_pokemon.dart';
import '../model/result_type_pokemon.dart';

class GetPokemonProvider {
  final GetPokemonI getPokemonI;
  GetPokemonProvider({
    required this.getPokemonI,
  });
  Future<List<CardModel>> getPokemon() async {
    final response = await getPokemonI.getPokemon();
    return response;
  }

  Future<List<ResultTypePokemon>> getType() async {
    final response = await getPokemonI.getType();
    return response;
  }
}
