import 'imports.dart';

class GetPokemonByIdRepository implements GetPokemonByIdI {
  final GetConnect connect;
  Pokemon? aboutPokemon;

  GetPokemonByIdRepository({
    required this.connect,
  });

  @override
  Future<Pokemon> getPokemonById({String? id}) async {
    Response? firstResponse = await connect.get("${BaseUrl.pokemonApi}$id");
    Response? secResponse = await connect.get("${BaseUrl.pokemonSpecies}$id");
    String firstResponseData = firstResponse.bodyString!;
    String secondResponseData = secResponse.bodyString!;
    aboutPokemon =
        responseApiPokemon(str: firstResponseData, sec: secondResponseData);
    return aboutPokemon!;
  }
}
