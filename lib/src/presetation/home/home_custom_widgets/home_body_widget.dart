import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';

import 'home_widget_card_search_pokemon.dart';
import 'home_widget_list_pokemon.dart';
import 'home_widget_type_pokemon.dart';

class HomeHeaderWidgetCard extends StatelessWidget {
  const HomeHeaderWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Builder(
      builder: (controller) {
        return SingleChildScrollView(
          physics: responsive.width < 809
              ? const NeverScrollableScrollPhysics()
              : const ClampingScrollPhysics(),
          child: Column(
            children: const [
              CustomWidgetCardSearchPokemon(),
              CustomWidgetTypePokemon(),
              CustomWidgetListPokemon(),
            ],
          ),
        );
      },
    );
  }
}
