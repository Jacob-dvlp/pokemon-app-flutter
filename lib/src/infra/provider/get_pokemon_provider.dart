import '../interface/get_pokemon_i.dart';
import '../model/category_model.dart';

class GetPokemonProvider {
  final GetPokemonI getPokemonI;
  GetPokemonProvider({
    required this.getPokemonI,
  });

  Future<List<ResultType?>> getCategory() async {
    return getPokemonI.getCategory();
  }
}
