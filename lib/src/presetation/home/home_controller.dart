import 'package:get/get.dart';

import '../../infra/provider/get_pokemon_provider.dart';

class HomeController extends GetxController {
  final GetPokemonProvider getPokemonProvider;
  HomeController({
    required this.getPokemonProvider,
  });

  @override
  void onInit() {
    print(getPokemonProvider.getCategory());
    super.onInit();
  }
}
