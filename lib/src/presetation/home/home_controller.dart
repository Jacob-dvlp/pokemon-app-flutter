import 'package:flutter/cupertino.dart';

import '../../../routes/importes.dart';
import '../../infra/interface/imports.dart';
import '../../infra/provider/get_pokemon_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  final GetPokemonProvider getPokemonProvider;
  final textSearch = TextEditingController();
  ScrollController controller = ScrollController();
  bool isLoading = true;
  double mainAxisSpacing = 2;
  double crossAxisSpacing = 2;
  double childAspectRatio = 1.25;
  int crossAxisCount = 2;
  List<CardModel> pokemon = [];
  List<CardModel> pokemonSearch = [];

  List<ResultTypePokemon> model = [];

  HomeController({
    required this.getPokemonProvider,
  });

  Future getPokemon() async {
    try {
      change([], status: RxStatus.loading());
      model = await getPokemonProvider.getType();
      pokemon = await getPokemonProvider.getPokemon();
      change([], status: RxStatus.success());
    } catch (e) {
      change(
        e,
        status: RxStatus.error("Erro ao buscar os dados"),
      );
    }
  }

  searchPokemon() {
    final poke = pokemon.where((poke) {
      final name = poke.name!.toLowerCase();
      return name.contains(textSearch.text);
    }).toList();
    pokemonSearch = poke;

    print(pokemonSearch);
    update();
  }

  @override
  void onInit() {
    getPokemon();
    // controller.addListener(() {
    // if (controller.position.pixels == controller.position.maxScrollExtent) {
    // getPokemon();
    /// }
    //});
    textSearch.addListener(searchPokemon);
    super.onInit();
  }

  @override
  void dispose() {
    textSearch.removeListener(searchPokemon);
    super.dispose();
  }
}
