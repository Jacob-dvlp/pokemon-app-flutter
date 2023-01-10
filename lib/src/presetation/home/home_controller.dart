import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../routes/importes.dart';
import '../../infra/interface/imports.dart';
import '../../infra/provider/provider_get_pokemon.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  final GetPokemonProvider getPokemonProvider;
  HomeController get to => Get.find();
  final textSearch = TextEditingController();
  bool isLoading = true;
  double mainAxisSpacing = 2;
  double crossAxisSpacing = 2;
  int crossAxisCount = 2;
  List<CardModel> pokemon = [];
  List<CardModel> pokemonSearch = [];
  List<ResultTypePokemon> model = [];
  int pageNumbercounter = 0;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  HomeController({
    required this.getPokemonProvider,
  });
  get refreshController => _refreshController;

  void onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    refreshController.refreshCompleted();
  }

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
