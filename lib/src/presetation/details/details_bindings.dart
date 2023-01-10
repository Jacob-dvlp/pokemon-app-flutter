import '../../../routes/importes.dart';
import '../../infra/interface/get_pokemon_i.dart';
import '../../infra/provider/provider_get_pokemon.dart';
import '../../infra/repository/respository_get_pokemon.dart';
import 'details_controller.dart';

class DetailBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => DetailController(Get.find()),
    );

    Get.lazyPut<GetPokemonI>(
        () => GetPokemonRespository(
              connect: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(
        () => GetPokemonProvider(
              getPokemonI: Get.find(),
            ),
        fenix: true);
  }
}
