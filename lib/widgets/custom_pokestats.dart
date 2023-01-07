import 'package:flutter/material.dart';

import '../helpers/type_color.dart';
import '../src/infra/model/about_pokemon_model.dart';

class CustomPokestats extends StatelessWidget {
  final Pokemon? pokemon;
  final String label;
  final double value;
  const CustomPokestats({
    Key? key,
    this.pokemon,
    required this.label,
    required this.value,
  }) : super(key: key);

  Widget statsBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: setTypeColor(pokemon!.type1!),
            ),
          ),
          const Spacer(),
          Text(
            "52",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: setTypeColor(pokemon!.type1!),
            ),
          ),
          Container(
            width: 250,
            height: 10,
            margin: const EdgeInsets.only(left: 15),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                    setCardColor(pokemon!.type1!)),
                value: value,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Column(
        children: [
          const SizedBox(height: 15),
          statsBar(),
        ],
      ),
    );
  }
}
