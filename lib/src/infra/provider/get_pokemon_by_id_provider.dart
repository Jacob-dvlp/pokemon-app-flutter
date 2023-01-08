import 'imports.dart';

class GetPokemonByIdProvider {
  final GetPokemonByIdI getPokemonByIdI;
  GetPokemonByIdProvider({
    required this.getPokemonByIdI,
  });

  Future<Pokemon> getPokemonById({String? id}) async {
    final response = await getPokemonByIdI.getPokemonById(id: id!);
    return response;
  }
}
