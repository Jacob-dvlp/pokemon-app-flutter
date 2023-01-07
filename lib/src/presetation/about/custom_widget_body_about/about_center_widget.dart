import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../helpers/extension_helper.dart';
import '../../../../helpers/type_color.dart';
import '../../../../style/app_style.dart';
import '../../../../utils/image/image_key.dart';
import '../../../infra/model/about_pokemon_model.dart';

class AboutCenterWidget extends StatelessWidget {
  final Pokemon pokemon;
  const AboutCenterWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 11,
              bottom: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pokemon.name!.capitalizeFirstLetter(),
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppStyle.colorSecundary,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(ImageKey.iconFavorite),
                    const SizedBox(
                      width: 6.75,
                    ),
                    Image.asset(ImageKey.iconShared),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cod: #${pokemon.id}',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppStyle.colorAboutText,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(color: setTypeColor(pokemon.type1!)),
                  width: 50,
                  height: 22,
                  child: Text(
                    pokemon.type1!.capitalizeFirstLetter(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppStyle.colorPrimary,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
