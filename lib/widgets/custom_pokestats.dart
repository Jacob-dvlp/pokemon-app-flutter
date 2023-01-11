import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/type_color.dart';
import '../src/infra/model/model_result_details_pokemon.dart';
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

  Widget statsBar(
      Responsive reponsive, String label, double value, Color color) {
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
            width: reponsive.wp(50),
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
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      child: Column(
        children: [
          statsBar(
              responsive, 'Vida', pokemon.hp!, setTypeColor(pokemon.type1!)),
          statsBar(responsive, 'Ataque', pokemon.attack!, AppStyle.colorLife),
          statsBar(responsive, 'Defesa', pokemon.defense!,
              AppStyle.colorBackgorundRed),
          statsBar(
              responsive, 'Velocid', pokemon.speed!, AppStyle.colorSecundary),
        ],
      ),
    );
  }
}
