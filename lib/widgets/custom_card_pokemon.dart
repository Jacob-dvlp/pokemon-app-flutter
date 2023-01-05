import 'package:flutter/material.dart';

class CustomCardPokemon extends StatelessWidget {
  const CustomCardPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: const [Text("Pokemon"), CircleAvatar()],
      ),
    );
  }
}
