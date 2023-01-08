import '../model/favorite_pokemon.dart';

abstract class FavoritePokemonI {
  Future save(PokemonFavorite pokemonFavorite);
  Future<List<PokemonFavorite>> read();
}
