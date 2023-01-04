import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/image/image_key.dart';
import '../../../../utils/texts/contants_texts.dart';
import '../../../../widgets/custom_app_bar.dart';

class HomeHeaderWidgetCard extends StatelessWidget {
  const HomeHeaderWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Positioned(
                child: CustomAppBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 109,
                  left: 35,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.colorOpacityHomePage.withAlpha(50),
                  ),
                  width: 335,
                  height: 152,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ContantsTexts.cartTextHeaderHome1,
                                  style: GoogleFonts.nunito(
                                    color: AppTheme.colorSecundary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 206,
                                  child: Text(
                                    ContantsTexts.cardTextHeaderHome2,
                                    style: GoogleFonts.nunito(
                                      color: AppTheme.colorSecundary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              ImageKey.imagePokemon,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 8),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: AppTheme.colorContainerPrimary,
                                      blurRadius: 25)
                                ], color: AppTheme.colorPrimary),
                                width: 122,
                                height: 31,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                  ),
                                )),
                            Container(
                              width: 40,
                              height: 30.3,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: AppTheme.colorBackgorundRed,
                                      blurRadius: 25.0)
                                ],
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color: AppTheme.colorBackgorundRed,
                                ),
                                child: Icon(
                                  Icons.search_outlined,
                                  color: AppTheme.colorBackgorundprimary,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 95,
                child: Image.asset(
                  ImageKey.backgroundHome1,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 23),
            child: Text(
              ContantsTexts.textTipoHeaderHome,
              style: GoogleFonts.nunito(
                color: AppTheme.colorSecundary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}
