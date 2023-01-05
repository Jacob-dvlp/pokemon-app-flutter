import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';
import 'custom_widget_card_search_pokemon.dart';
import 'custom_widget_list_pokemon.dart';
import 'custom_widget_type_pokemon.dart';

class HomeHeaderWidgetCard extends GetView<HomeController> {
  const HomeHeaderWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(getPokemonProvider: Get.find()),
      builder: (controller) {
        return SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              const CustomWidgetCardSearchPokemon(),
              CustomWidgetListPokemon(controller: controller),
              CustomWidgetTypePokemon(
                controller: controller,
              ),
            ],
          ),
        );
      },
    );
  }
}
