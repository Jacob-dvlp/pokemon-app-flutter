import '../interface/favorite_pokemon_i.dart';
import '../model/favorite_pokemon.dart';

class FavoritePokemonProvider {
  final FavoritePokemonI favoritePokemonI;
  FavoritePokemonProvider({
    required this.favoritePokemonI,
  });

  Future save(PokemonFavorite pokemonFavorite) async {
    await favoritePokemonI.save(pokemonFavorite);
  }
}
