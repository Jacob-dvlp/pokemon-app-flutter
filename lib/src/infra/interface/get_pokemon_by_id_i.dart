import '../model/about_pokemon_model.dart';

abstract class GetPokemonByIdI {
  Future<Pokemon> getPokemonById({String id});
}
