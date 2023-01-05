import 'package:get/get.dart';

import '../../infra/model/category_model.dart';
import '../../infra/provider/get_pokemon_provider.dart';

class HomeController extends GetxController {
  final GetPokemonProvider getPokemonProvider;

  HomeController({
    required this.getPokemonProvider,
  });

  List<CategoryModel?> model = [];

  Future category() async {
    try {
      model = await getPokemonProvider.getCategory();
    } catch (e) {}
  }

  @override
  void onInit() {
    category();
    super.onInit();
  }
}
