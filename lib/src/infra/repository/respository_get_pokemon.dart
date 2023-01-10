import 'imports.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  List<CardModel> pokemon = [];
  Pokemon? detail;

  GetPokemonRespository({
    required this.connect,
  });

  @override
  Future<List<CardModel>> getPokemons({int pageNumber = 0}) async {
    final response =
        await connect.get("${BaseUrl.pokemonApi}?offset=$pageNumber&limit=15");
    final model =
        response.body["results"].map((poke) => ModelApi.fromMap(poke)).toList();
    List<ModelApi> api = List<ModelApi>.from(model);

    return await getPokemonInfs(api);
  }

  Future<List<CardModel>> getPokemonInfs(List<ModelApi> pokemonList) async {
    for (ModelApi item in pokemonList) {
      final response = await connect.get(item.url);
      String responseData = response.bodyString!;
      pokemon.add(responseCard(responseData));
    }
    return pokemon;
  }
  
  @override
  Future<List<ResultTypePokemon>> getTypes() async {
    List<ResultTypePokemon> modeltype = [];
    Response response = await connect.get(BaseUrl.typeApi);
    String? convertResponse = response.bodyString;
    if (response.isOk) {
      ResponseApiType resultResponse =
          responseApiTypeFromJson(convertResponse!);
      modeltype = resultResponse.results!;
    }
    return modeltype;
  }

  @override
  Future<Pokemon> getPokemonById({String? id}) async {
    Response firstResponse = await connect.get("${BaseUrl.pokemonApi}$id");
    Response secResponse = await connect.get("${BaseUrl.pokemonSpecies}$id");
    String firstResponseData = firstResponse.bodyString!;
    String secondResponseData = secResponse.bodyString!;
    detail =
        responseApiPokemon(str: firstResponseData, sec: secondResponseData);
    return detail!;
  }
}
