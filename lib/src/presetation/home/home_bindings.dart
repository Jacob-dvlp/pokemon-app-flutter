import '../../../routes/importes.dart';
import '../../infra/interface/get_pokemon_i.dart';
import '../../infra/provider/get_pokemon_provider.dart';
import '../../infra/repository/get_pokemon_respository.dart';
class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetConnect(), fenix: true);

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
