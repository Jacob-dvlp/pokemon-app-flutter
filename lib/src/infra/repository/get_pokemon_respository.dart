import 'package:get/get.dart';

import '../../../utils/url/base_url.dart';
import '../interface/get_pokemon_i.dart';
import '../model/result_type_pokemon.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  GetPokemonRespository({
    required this.connect,
  });
  @override
  Future<List<ResultTypePokemon>> getPokemon() {
    throw UnimplementedError();
  }

  @override
  Future<List<ResultTypePokemon>> getCategory() async {
    List<ResultTypePokemon> modeltype = [];
    Response response = await connect.get(BaseUrl.typeApi);
    String? convertResponse = response.bodyString;
    if (response.isOk) {
      ResponseApi resultResponse = responseApiFromJson(convertResponse!);
      modeltype = resultResponse.results!;
    }
    return modeltype;
  }
}
