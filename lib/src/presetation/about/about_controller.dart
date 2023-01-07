import 'package:get/get.dart';

import '../../infra/model/about_pokemon_model.dart';
import '../../infra/provider/get_pokemon_by_id_provider.dart';

class AboutController extends GetxController with StateMixin {
  final GetPokemonByIdProvider getPokemonByIdProvider;
  final id = Get.arguments[0];
  Pokemon? pokemon;
  AboutController(this.getPokemonByIdProvider);


  Future getPokemonById() async {
    try {
      change([], status: RxStatus.loading());
      final response = await getPokemonByIdProvider.getPokemonById(
        id: id.toString(),
      );
      pokemon = response;
      change([], status: RxStatus.success());
    } catch (e) {
      change(e, status: RxStatus.error());
    }
  }

  @override
  void onInit() {
    getPokemonById();
    super.onInit();
  }
}
