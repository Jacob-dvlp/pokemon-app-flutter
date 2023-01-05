import 'package:flutter/material.dart';

import '../../../../widgets/custom_card_pokemon.dart';

class CustomWidgetListPokemon extends StatelessWidget {
  const CustomWidgetListPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      top: 410,
      right: 30,
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 50),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const CustomCardPokemon();
          },
        ),
      ),
    );
  }
}
