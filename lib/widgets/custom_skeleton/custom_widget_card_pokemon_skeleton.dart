import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../style/app_style.dart';
import '../../utils/image/image_key.dart';

class CustomWidgetCardPokemonSkeleton extends StatelessWidget {
  const CustomWidgetCardPokemonSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, bottom: 10.13),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 1,
            spreadRadius: 0.5,
            color: Colors.black26,
          )
        ]),
        width: 159.63,
        height: 110.94,
        child: Stack(
          children: [
            Positioned(
              left: 69,
              top: 17.4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 74.96,
                  height: 76.69,
                  child: Image.asset(
                    ImageKey.bgImageVetor,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 69,
              top: 17.4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 74.96,
                    height: 76.69,
                    child: Image.asset(
                      ImageKey.squirtle,
                    )),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      top: 12,
                      bottom: 3,
                    ),
                    child: Text(
                      "Tipo",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: AppStyle.colorSecundary),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 64.04,
                    height: 22.64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Pokemon",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppStyle.colorPrimary),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5.66),
                  child: SizedBox(
                    width: 40,
                    height: 18.11,
                    child: Text(
                      '#Pokemon',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppStyle.colorSecundary),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
