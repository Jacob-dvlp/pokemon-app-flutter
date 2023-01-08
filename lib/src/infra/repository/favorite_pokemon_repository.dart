import 'package:get_storage/get_storage.dart';

import '../interface/favorite_pokemon_i.dart';
import '../model/favorite_pokemon.dart';

class FavoritePokemonRepository implements FavoritePokemonI {
  GetStorage getStorage;
  FavoritePokemonRepository({
    required this.getStorage,
  });

  @override
  Future save(PokemonFavorite pokemonFavorite) async {
    await getStorage.write('favorite', pokemonFavorite.toJson());
  }

  @override
  Future<List<PokemonFavorite>> read() {
    // TODO: implement read
    throw UnimplementedError();
  }
}
