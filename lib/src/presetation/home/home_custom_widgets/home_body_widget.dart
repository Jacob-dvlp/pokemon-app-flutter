import 'package:flutter/material.dart';

import 'home_widget_card_search_pokemon.dart';
import 'home_widget_list_pokemon.dart';
import 'home_widget_type_pokemon.dart';

class HomeHeaderWidgetCard extends StatelessWidget {
  const HomeHeaderWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (controller) {
        return SizedBox(
            child: SingleChildScrollView(
          child: Column(
            children: const [
              CustomWidgetCardSearchPokemon(),
              CustomWidgetTypePokemon(),
              CustomWidgetListPokemon(),
            ],
          ),
        ));
      },
    );
  }
}
