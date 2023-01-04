import '../model/category_model.dart';
import '../model/result_model.dart';

abstract class GetPokemonI {
  Future<List<ResultApi?>> getPokemon();
  Future<List<CategoryModel?>> getCategory();
}
