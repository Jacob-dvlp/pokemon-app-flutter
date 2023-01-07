import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/texts/contants_texts.dart';

class AboutFooterWidget extends StatelessWidget {
  const AboutFooterWidget({Key? key}) : super(key: key);

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
                height: 95,
                child: Text(
                  ContantsTexts.decription,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.colorSecundary,
                  ),
                )),
          ),
          //  const SizedBox(child: CustomPokestats(label: "TES", value: 50))
        ],
      ),
    );
  }
}
