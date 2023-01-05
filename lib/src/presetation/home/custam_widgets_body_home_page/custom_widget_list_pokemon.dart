import 'package:flutter/material.dart';

import '../../../../widgets/custom_card_pokemon.dart';
import '../home_controller.dart';

class CustomWidgetListPokemon extends StatelessWidget {
  final HomeController controller;

  const CustomWidgetListPokemon({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      top: 410,
      right: 30,
      child: SizedBox(
          height: 300,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: controller.mainAxisSpacing,
              crossAxisSpacing: controller.crossAxisSpacing,
              childAspectRatio: controller.childAspectRatio,
              crossAxisCount: controller.crossAxisCount,
            ),
            itemBuilder: (context, index) {
              return const CustomCardPokemon();
            },
          )),
    );
  }
}
