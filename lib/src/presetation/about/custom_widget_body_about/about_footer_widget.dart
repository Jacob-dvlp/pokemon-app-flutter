import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../helpers/extension_helper.dart';
import '../../../../theme/app_theme.dart';
import '../../../../widgets/custom_pokestats.dart';
import '../../../infra/model/about_pokemon_model.dart';

class AboutFooterWidget extends StatelessWidget {
  final Pokemon pokemon;
  const AboutFooterWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 7, top: 17),
            child: Text(
              'Descriçāo',
              style: GoogleFonts.nunito(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppTheme.colorAboutText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
            ),
            child: SizedBox(
                width: 336,
                child: Text(
                  pokemon.description!.capitalizeFirstLetter(),
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.colorSecundary,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child: PokeStats(pokemon: pokemon),
          )
        ],
      ),
    );
  }
}
