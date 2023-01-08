import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../routes/importes.dart';
import '../../../../style/app_style.dart';
import '../../../../utils/image/image_key.dart';
import '../../../../utils/texts/contants_texts.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../home_controller.dart';

class CustomWidgetCardSearchPokemon extends StatelessWidget {
  const CustomWidgetCardSearchPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: CustomAppBar(
            widget: Icon(
              Icons.menu,
              color: AppStyle.colorSecundary,
            ),
            isHome: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 109, left: 20, right: 20),
          child: Container(
            height: 152,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppStyle.colorOpacityHomePage.withAlpha(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 27.0,
                    left: 14.0,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ContantsTexts.cartTextHeaderHome1,
                            style: GoogleFonts.nunito(
                              color: AppStyle.colorSecundary,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, right: 15),
                            child: SizedBox(
                              width: 206,
                              child: Text(
                                ContantsTexts.cardTextHeaderHome2,
                                style: GoogleFonts.nunito(
                                  color: AppStyle.colorSecundary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 05,
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                            color:
                                                AppStyle.colorContainerPrimary,
                                            blurRadius: 25)
                                      ], color: AppStyle.colorPrimary),
                                      width: 122.6,
                                      height: 31,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                          ),
                                        ),
                                        child: SizedBox(
                                            child: GetBuilder<HomeController>(
                                          init: HomeController(
                                            getPokemonProvider: Get.find(),
                                          ),
                                          builder: (controller) {
                                            return TextField(
                                              controller: controller.textSearch,
                                            );
                                          },
                                        )),
                                      )),
                                  Container(
                                    width: 40,
                                    height: 30.3,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: AppStyle.colorBackgorundRed,
                                            blurRadius: 25.0)
                                      ],
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        color: AppStyle.colorBackgorundRed,
                                      ),
                                      child: Icon(
                                        Icons.search_outlined,
                                        color: AppStyle.colorBackgorundprimary,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 27.0,
                          bottom: 33.0,
                          left: 2.0,
                        ),
                        child: Image.asset(
                          ImageKey.imagePokemon,
                        ),
                      )
                    ],
                  ),
                ),
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
    );
  }
}
