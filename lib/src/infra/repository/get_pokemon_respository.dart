import 'package:get/get.dart';

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
  Future<List<CategoryModel?>> getCategory() async {
    List<CategoryModel> model = [
      CategoryModel(name: 'Fogo', url: ""),
      CategoryModel(name: 'Normal', url: ""),
      CategoryModel(name: 'Ar', url: ""),
      CategoryModel(name: 'Terra', url: ""),
      CategoryModel(name: 'Pedra', url: "")
    ];
    print(model);
    return model;
  }
}
