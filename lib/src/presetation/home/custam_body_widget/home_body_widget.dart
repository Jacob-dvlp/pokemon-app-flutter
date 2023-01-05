import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_list_pokemon.dart';
import 'custom_widget_card_search.dart';
import 'custom_widget_type.dart';

class HomeHeaderWidgetCard extends StatelessWidget {
  const HomeHeaderWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: Stack(
        children: const [
          CustomWidgetCardSearch(),
          CustomListPokemon(),
          CustomWidgetType(),
        ],
      ),
    );
  }
}
