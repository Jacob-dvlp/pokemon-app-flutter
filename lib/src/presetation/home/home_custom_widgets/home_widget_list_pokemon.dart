import 'package:flutter/material.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

import '../../../../routes/importes.dart';
import '../../../../widgets/custom_card_pokemon.dart';
import '../../../../widgets/custom_skeleton/custom_widget_card_pokemon_skeleton.dart';
import '../../../infra/interface/imports.dart';
import '../home_controller.dart';

class CustomWidgetListPokemon extends GetView<HomeController> {
  const CustomWidgetListPokemon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(getPokemonProvider: Get.find()),
      builder: (controller) {
        return Positioned(
          left: 30,
          top: 410,
          right: 30,
          child: controller.obx(
            (state) {
              return SizedBox(
                height: 300,
                child: GridView.builder(
                  controller: controller.controller,
                  itemCount: controller.pokemonSearch.isEmpty
                      ? controller.pokemon.length
                      : controller.pokemonSearch.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: controller.mainAxisSpacing,
                    crossAxisSpacing: controller.crossAxisSpacing,
                    childAspectRatio: controller.childAspectRatio,
                    crossAxisCount: controller.crossAxisCount,
                  ),
                  itemBuilder: (context, index) {
                    final CardModel card = controller.pokemonSearch.isEmpty
                        ? controller.pokemon[index]
                        : controller.pokemonSearch[index];
                    return CustomCardPokemon(
                      card: card,
                    );
                  },
                ),
              );
            },
            onLoading: const SkeletonGridLoader(
              builder: SizedBox(child: CustomWidgetCardPokemonSkeleton()),
              items: 9,
              itemsPerRow: 2,
              highlightColor: Colors.white,
              direction: SkeletonDirection.ltr,
              childAspectRatio: 1,
            ),
            onError: (error) => Center(
              child: Text(
                error.toString(),
              ),
            ),
          ),
        );
      },
    );
  }
}
