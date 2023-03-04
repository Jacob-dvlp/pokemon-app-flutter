import '../../../routes/importes.dart';
import '../../infra/model/model_result_details_pokemon.dart';
import '../../infra/provider/provider_get_pokemon.dart';

class DetailController extends GetxController with StateMixin {
  Pokemon? pokemon;
  final GetPokemonProvider getPokemonProvider;

  bool pageFavorite = false;
  bool isHome = true;

  DetailController(this.getPokemonProvider);

  Future getPokemonById() async {
    try {
      final id = Get.arguments[0];
      change([], status: RxStatus.loading());
      final response = await getPokemonProvider.getPokemonById(id.toString());
      pokemon = response;

      change([], status: RxStatus.success());
    } catch (e) {
      change(
        e,
        status: RxStatus.error("Erro ao buscar dados"),
      );
    }
  }

  btnFavorite() {
    pokemon!.favorite = !pokemon!.favorite!;
    update();
  }

  isHomePage() {
    isHome = true;
    pageFavorite = false;
    update();
  }

  isFavoritePage() {
    pageFavorite = true;
    isHome = false;
    update();
  }

  @override
  void onInit() async {
    getPokemonById();
    super.onInit();
  }
}
