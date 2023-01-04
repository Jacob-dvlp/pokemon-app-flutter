import 'package:get/get.dart';

import '../interface/get_pokemon_i.dart';

class GetPokemonRespository implements GetPokemonI {
  final GetConnect connect;
  GetPokemonRespository({
    required this.connect,
  });
  @override
  Future<List> getPokemon() {
    // TODO: implement getPokemon
    throw UnimplementedError();
  }
}
