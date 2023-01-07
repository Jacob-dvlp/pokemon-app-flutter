import 'package:get/get.dart';

import '../../infra/provider/get_pokemon_by_id_provider.dart';

class AboutController extends GetxController {
  final GetPokemonByIdProvider getPokemonByIdProvider;
  final id = Get.arguments[0];

  AboutController(this.getPokemonByIdProvider);
  String convertValue(value) {
    double initValue = value * 100;
    return initValue.toStringAsFixed(0);
  }

  Future getPokemonById() async {
    await getPokemonByIdProvider.getPokemonById(id: id.toString());
  }

  @override
  void onInit() {
    getPokemonById();
    super.onInit();
  }
}
