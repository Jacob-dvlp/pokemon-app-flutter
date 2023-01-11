import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../helpers/extension_helper.dart';
import '../../../../routes/importes.dart';
import '../../../../style/app_style.dart';
import '../../../../widgets/custom_pokestats.dart';
import '../../../infra/model/model_result_details_pokemon.dart';

class DetailsFooterWidget extends StatelessWidget {
  final Pokemon pokemon;
  const DetailsFooterWidget({
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
            padding: const EdgeInsets.only(left: 18, bottom: 7, top: 5),
            child: Text(
              'Descriçāo',
              style: GoogleFonts.nunito(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppStyle.colorAboutText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
            ),
            child: SizedBox(
                width: Get.width,
                child: Text(
                  pokemon.description!.capitalizeFirstLetter(),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppStyle.colorSecundary,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child: PokeStats(pokemon: pokemon),
          ),
        ],
      ),
    );
  }
}
