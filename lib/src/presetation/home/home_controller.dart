import 'package:get/get.dart';

import '../../infra/model/result_pokemon.dart';
import '../../infra/model/result_type_pokemon.dart';
import '../../infra/provider/get_pokemon_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  final GetPokemonProvider getPokemonProvider;
  bool isLoading = true;
  double mainAxisSpacing = 2;
  double crossAxisSpacing = 2;
  double childAspectRatio = 1.25;
  int crossAxisCount = 2;
  List<CardModel> pokemon = [];
  List<ResultTypePokemon> model = [];

  HomeController({
    required this.getPokemonProvider,
  });

  @override
  void onInit() {
    getPokemon();
    super.onInit();
  }

  Future getPokemon() async {
    try {
      change([], status: RxStatus.loading());
      model = await getPokemonProvider.getType();
      pokemon = await getPokemonProvider.getPokemon();
      change([], status: RxStatus.success());
    } catch (e) {
      change(e, status: RxStatus.error());
    }
  }
}
