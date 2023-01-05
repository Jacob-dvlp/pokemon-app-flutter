import 'package:get/get.dart';

import '../../infra/model/result_type_pokemon.dart';
import '../../infra/provider/get_pokemon_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  final GetPokemonProvider getPokemonProvider;
  double mainAxisSpacing = 2;
  double crossAxisSpacing = 2;
  double childAspectRatio = 1.25;
  int crossAxisCount = 2;
  HomeController({
    required this.getPokemonProvider,
  });

  List<ResultTypePokemon> model = [];

  Future getPokemon() async {
    try {
      //  change([], status: RxStatus.loading());
      model = await getPokemonProvider.getCategory();
      //   change(model, status: RxStatus.success());
    } catch (error) {
      //  change(error, status: RxStatus.error("Erro ao buscar dados"));
    }
  }

  @override
  void onInit() {
    getPokemon();
    super.onInit();
  }
}
