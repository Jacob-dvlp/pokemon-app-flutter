import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../routes/importes.dart';
import '../../infra/interface/imports.dart';
import '../../infra/provider/provider_get_pokemon.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  final GetPokemonProvider getPokemonProvider;
  final textSearch = TextEditingController();
  String filterTypeName = "normal";
  bool isLoading = true;
  bool isNotFilter = false;
  double mainAxisSpacing = 2;
  double crossAxisSpacing = 2;
  int crossAxisCount = 2;
  List<CardModel> pokemon = [];
  List<CardModel> pokemonSearch = [];
  List<ResultTypePokemon> modelYpe = [];

  int pageNumbercounter = 0;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  HomeController(
    this.getPokemonProvider,
  );
  get refreshController => _refreshController;

  onLoading() async {
    try {
      await getPokemonProvider.getPokemon(pageNumber: pageNumbercounter++);
      refreshController.loadComplete();
      update();
    } catch (e) {
      change(
        e,
        status: RxStatus.error("Erro ao buscar os dados"),
      );
    }
  }

  Future getPokemon() async {
    try {
      change([], status: RxStatus.loading());
      modelYpe = await getPokemonProvider.getType();
      pokemon = await getPokemonProvider.getPokemon();
      change([], status: RxStatus.success());
    } catch (e) {
      change(
        e,
        status: RxStatus.error("Erro ao buscar os dados"),
      );
    }
  }

  void searchPokemon() {
    final poke = pokemon.where((poke) {
      final name = poke.name!.toLowerCase();
      final type = poke.type1!;
      return isNotFilter
          ? name.contains(textSearch.text)
          : type.contains(filterTypeName);
    }).toList();
    pokemonSearch = poke;
    update();
  }

  @override
  void onInit() {
    getPokemon();
    textSearch.addListener(searchPokemon);
    super.onInit();
  }

  @override
  void dispose() {
    textSearch.removeListener(searchPokemon);
    super.dispose();
  }
}
