import '../interface/get_pokemon_by_id_i.dart';
import '../model/about_pokemon_model.dart';

class GetPokemonByIdProvider {
  final GetPokemonByIdI getPokemonByIdI;
  GetPokemonByIdProvider({
    required this.getPokemonByIdI,
  });

  Future<Pokemon> getPokemonById({String? id}) async {
    return getPokemonByIdI.getPokemonById(id: id!);
  }
}
