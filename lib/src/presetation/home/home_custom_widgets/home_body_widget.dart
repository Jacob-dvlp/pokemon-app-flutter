import 'package:flutter/material.dart';
import 'home_widget_card_search_pokemon.dart';

import '../../../../routes/importes.dart';
import '../../../../widgets/custom_skeleton/custom_widget_card_pokemon_skeleton.dart';
import 'home_widget_list_pokemon.dart';
import 'home_widget_type_pokemon.dart';

class HomeHeaderWidgetCard extends StatelessWidget {
  const HomeHeaderWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (controller) {
        return SizedBox(
          height: Get.height,
          child: Stack(
            children: const [
              CustomWidgetCardSearchPokemon(),
              CustomWidgetListPokemon(),
              CustomWidgetTypePokemon(),
            ],
          ),
        );
      },
    );
  }
}
