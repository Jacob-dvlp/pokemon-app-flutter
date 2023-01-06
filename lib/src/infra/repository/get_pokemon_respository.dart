import 'dart:math';

import 'package:get/get.dart';

import '../../../utils/url/base_url.dart';
import '../interface/get_pokemon_i.dart';
import '../model/result_pokemon.dart';
import '../model/result_type_pokemon.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  late int pokeIndex;
  late Random rnd;
  int min = 1;
  int max = 893;
  int pokeNumber = 5;
  GetPokemonRespository({
    required this.connect,
  });
  @override
  Future<ResultApiPokemon> getPokemon() async {
    ResultApiPokemon? pokemon;
    for (int index = 1; index < pokeNumber + 1; index++) {
      rnd = Random();
      pokeIndex = min + rnd.nextInt(max - min);
      Response response = await connect.get("${BaseUrl.pokemonApi}$pokeIndex");
      String? convertResponse = response.bodyString;
      if (response.isOk) {
        ResultApiPokemon result = responseApiPokemonFromJson(convertResponse!);
        final teste = result.name;
        pokemon = result;
        print(result.types);
      }
    }
    return pokemon!;
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
