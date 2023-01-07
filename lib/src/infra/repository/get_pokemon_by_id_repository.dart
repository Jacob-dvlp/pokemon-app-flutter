import 'package:get/get.dart';

import '../../../utils/url/base_url.dart';
import '../interface/get_pokemon_by_id_i.dart';
import '../model/about_pokemon_model.dart';

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
    print(firstResponse.statusCode);
    aboutPokemon =
        responseApiPokemon(str: firstResponseData, sec: secondResponseData);
    print(aboutPokemon!.name!);
    return aboutPokemon!;
  }
}
