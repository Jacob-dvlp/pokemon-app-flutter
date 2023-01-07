import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/type_color.dart';
import '../src/infra/model/about_pokemon_model.dart';
import '../style/app_style.dart';

class PokeStats extends StatelessWidget {
  final Pokemon pokemon;
  const PokeStats({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  String convertValue(value) {
    double initValue = value * 100;
    return initValue.toStringAsFixed(0);
  }

  Widget statsBar(String label, double value, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: AppStyle.colorSecundary,
                fontSize: 12),
          ),
          const Spacer(),
          Text(
            "${convertValue(value)}%",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: AppStyle.colorSecundary,
                fontSize: 12),
          ),
          Container(
            width: 250,
            height: 10,
            margin: const EdgeInsets.only(left: 15),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              child: LinearProgressIndicator(
                backgroundColor: AppStyle.colorLinearbg,
                valueColor: AlwaysStoppedAnimation<Color>(color),
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
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      child: Column(
        children: [
          statsBar('Vida', pokemon.hp!, setTypeColor(pokemon.type1!)),
          statsBar('Ataque', pokemon.attack!, AppStyle.colorLife),
          statsBar('Defesa', pokemon.defense!, AppStyle.colorBackgorundRed),
          statsBar('Velocid', pokemon.speed!, AppStyle.colorSecundary),
        ],
      ),
    );
  }
}
