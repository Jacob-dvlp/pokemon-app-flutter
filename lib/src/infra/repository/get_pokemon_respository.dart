import 'package:get/get.dart';

import '../../../utils/url/base_url.dart';
import '../interface/get_pokemon_i.dart';
import '../model/category_model.dart';
import '../model/result_model.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  GetPokemonRespository({
    required this.connect,
  });
  @override
  Future<List<ResultApi>> getPokemon() {
    throw UnimplementedError();
  }

  @override
  Future<List<ResultType?>> getCategory() async {
    try {
      final response = await connect.get(BaseUrl.typeApi);
      final convert = response.body;
      print(convert);
      List<ResultType?> model = [];
      return model;
    } catch (e) {
      return [];
    }
  }
}
