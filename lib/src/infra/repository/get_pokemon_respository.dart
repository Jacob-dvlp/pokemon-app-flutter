import 'imports.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  late int pokeIndex;

  int pokeNumber = 20;
  int index = 1;
  List<CardModel> pokemon = [];
  List<CardModel> pokeList = [];
  GetPokemonRespository({
    required this.connect,
  });
  @override
  Future<List<CardModel>> getPokemon() async {
    for (index; index <= pokeNumber; index++) {
      pokeIndex = index;
      Response? response = await connect.get("${BaseUrl.pokemonApi}$pokeIndex");
      if (response.isOk) {
        String responseData = response.bodyString!;
        pokemon.add(responseCard(responseData));
        pokeList = pokemon;
        print(index);
        //  index = pokemon.length;
        ///pokeNumber = pokeNumber + index;
      }
    }
    return pokeList;
  }

  @override
  Future<List<ResultTypePokemon>> getType() async {
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
}
