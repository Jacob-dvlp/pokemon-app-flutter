import 'imports.dart';

abstract class GetPokemonByIdI {
  Future<Pokemon> getPokemonById({String id});
}
