import 'package:get/get.dart';

import '../../../utils/url/base_url.dart';
import '../interface/get_pokemon_i.dart';
import '../model/result_pokemon.dart';
import '../model/result_type_pokemon.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  late int pokeIndex;

  int pokeNumber = 20;
  List<CardModel> pokemon = [];
  List<CardModel> pokeList = [];
  GetPokemonRespository({
    required this.connect,
  });
  @override
  Future<List<CardModel>> getPokemon() async {
    for (int index = 1; index < pokeNumber; index++) {
      pokeIndex = index;
      Response? response = await connect.get("${BaseUrl.pokemonApi}$pokeIndex");
      if (response.isOk) {
        String responseData = response.bodyString!;
        pokemon.add(responseCard(responseData));
        pokeList = pokemon;
      }
    }
    return pokeList;
  }

  @override
  Future<List<ResultTypePokemon>> getCategory() async {
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
