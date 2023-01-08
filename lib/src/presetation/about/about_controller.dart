import 'package:get_storage/get_storage.dart';

import '../../../routes/importes.dart';
import '../../infra/interface/imports.dart';
import '../../infra/model/favorite_pokemon.dart';
import '../../infra/provider/favorite_pokemon_provider.dart';
import '../../infra/provider/get_pokemon_by_id_provider.dart';

class AboutController extends GetxController with StateMixin {
  final GetPokemonByIdProvider getPokemonByIdProvider;
  final FavoritePokemonProvider favoritePokemonProvider;
  final id = Get.arguments[0];
  final getstorege = GetStorage();
  Pokemon? pokemon;
  PokemonFavorite? pokemonFavorite;
  AboutController(this.getPokemonByIdProvider, this.favoritePokemonProvider);
  bool pageFavorite = false;
  bool isHome = true;

  Future saveFavorite() async {
    final modelFavorite = pokemonFavorite ??
        PokemonFavorite(
          favorite: true,
          id: pokemon!.id,
          name: pokemon!.name,
          sprite: pokemon!.sprite,
          type1: pokemon!.type1,
          type2: pokemon!.type2,
        );
    final response = await favoritePokemonProvider.save(modelFavorite);
  }

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
  void onInit() {
    getPokemonById();
    final favorite = getstorege.read('favorite');
    print(favorite);
    super.onInit();
  }
}
