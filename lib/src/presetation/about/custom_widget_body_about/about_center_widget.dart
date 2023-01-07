import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/image/image_key.dart';

class AboutCenterWidget extends StatelessWidget {
  const AboutCenterWidget({Key? key}) : super(key: key);

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
                  'Charmeleon',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.colorSecundary,
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
                  'Cod: #0034',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.colorAboutText,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: AppTheme.colorAboutOrange),
                  width: 50,
                  height: 22,
                  child: Text(
                    'Fogo',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.colorPrimary,
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
