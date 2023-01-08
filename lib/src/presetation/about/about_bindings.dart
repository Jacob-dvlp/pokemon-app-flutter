import '../../../routes/importes.dart';
import '../../infra/interface/get_pokemon_by_id_i.dart';
import '../../infra/provider/get_pokemon_by_id_provider.dart';
import '../../infra/repository/get_pokemon_by_id_repository.dart';
import 'about_controller.dart';

class AboutBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => GetConnect(),
    );
    Get.lazyPut(
      () => AboutController(
        Get.find(),
      ),
    );
    Get.lazyPut<GetPokemonByIdI>(
      () => GetPokemonByIdRepository(
        connect: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetPokemonByIdProvider(
        getPokemonByIdI: Get.find(),
      ),
    );
  }
}
