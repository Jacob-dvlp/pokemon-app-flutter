import '../../../routes/importes.dart';
import '../../infra/interface/get_pokemon_i.dart';
import '../../infra/provider/provider_get_pokemon.dart';
import '../../infra/repository/respository_get_pokemon.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetConnect(), fenix: true);

    Get.lazyPut<GetPokemonI>(
        () => GetPokemonrepository(
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
