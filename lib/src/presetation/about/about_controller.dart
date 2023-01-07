import 'package:get/get.dart';

import '../../infra/model/about_pokemon_model.dart';
import '../../infra/provider/get_pokemon_by_id_provider.dart';

class AboutController extends GetxController {
  final GetPokemonByIdProvider getPokemonByIdProvider;
  final id = Get.arguments[0];
  Pokemon? pokemon;
  AboutController(this.getPokemonByIdProvider);
  String convertValue(value) {
    double initValue = value * 100;
    return initValue.toStringAsFixed(0);
  }

  Future getPokemonById() async {
    try {
      final response = await getPokemonByIdProvider.getPokemonById(
        id: id.toString(),
      );
      pokemon = response;
    } catch (e) {}
  }

  @override
  void onInit() {
    getPokemonById();
    super.onInit();
  }
}
