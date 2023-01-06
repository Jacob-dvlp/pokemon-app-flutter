import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/image/image_key.dart';
import '../../../../utils/texts/contants_texts.dart';
import '../../../../widgets/custom_card_category.dart';
import '../../../infra/model/result_type_pokemon.dart';
import '../home_controller.dart';

class CustomWidgetTypePokemon extends StatelessWidget {
  final HomeController controller;
  const CustomWidgetTypePokemon({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 250),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              top: 19,
            ),
            child: Text(
              ContantsTexts.textTipoHeaderHome3,
              style: GoogleFonts.nunito(
                color: AppTheme.colorSecundary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Stack(
            children: [
              Positioned(
                left: 20.17,
                top: 44,
                child: Image.asset(
                  ImageKey.backgroundHome1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  top: 12.0,
                  right: 30.0,
                  bottom: 32.0,
                ),
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: controller.model.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final ResultTypePokemon resultApi =
                          controller.model[index];
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: CustomCardCategory(name: resultApi.name!),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 84,
                  left: 30,
                ),
                child: Text(
                  ContantsTexts.textTipoHeaderHome4,
                  style: GoogleFonts.nunito(
                    color: AppTheme.colorSecundary,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
