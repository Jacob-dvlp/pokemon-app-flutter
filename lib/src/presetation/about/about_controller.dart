import '../../../routes/importes.dart';
import '../../infra/interface/get_pokemon_by_id_i.dart';
import '../../infra/interface/imports.dart';
class AboutController extends GetxController with StateMixin {
  final GetPokemonByIdI getPokemonByIdProvider;
  final id = Get.arguments[0];
  Pokemon? pokemon;
  AboutController(this.getPokemonByIdProvider);
  bool isFavorite = false;
  bool isHome = true;

  Future getPokemonById() async {
    try {
      change([], status: RxStatus.loading());
      final response = await getPokemonByIdProvider.getPokemonById(
        id: id.toString(),
      );
      pokemon = response;
      change([], status: RxStatus.success());
    } catch (e) {
      change(
        e,
        status: RxStatus.error("Erro ao buscar dados"),
      );
    }
  }

  isHomePage() {
    isHome = true;
    isFavorite = false;
    update();
  }

  isFavoritePage() {
    isFavorite = true;
    isHome = false;
    update();
  }

  @override
  void onInit() {
    getPokemonById();
    super.onInit();
  }
}
