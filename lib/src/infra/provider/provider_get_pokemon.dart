import 'imports.dart';

class GetPokemonProvider {
  final GetPokemonI getPokemonI;
  GetPokemonProvider({
    required this.getPokemonI,
  });
  Future<List<CardModel>> getPokemon({int pageNumber = 0}) async {
    final response = await getPokemonI.getPokemons(pageNumber: pageNumber);
    return response;
  }

  Future<List<ResultTypePokemon>> getType() async {
    final response = await getPokemonI.getTypes();
    return response;
  }

  Future<Pokemon> getPokemonById(String id) async {
    final response = await getPokemonI.getPokemonById(id: id);
    return response;
  }
}
