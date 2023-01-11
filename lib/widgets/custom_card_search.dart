import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/importes.dart';
import '../src/presetation/home/home_controller.dart';
import '../style/app_style.dart';
import '../utils/image/image_key.dart';
import '../utils/texts/contants_texts.dart';

class CustomCardSearch extends StatelessWidget {
  const CustomCardSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19, left: 20, right: 20),
          child: Container(
            width: responsive.wp(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppStyle.colorOpacityHomePage.withAlpha(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 27.0,
                    left: 14.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              width: responsive.wp(45),
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
                                      width: responsive.wp(22),
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
                                            Get.find(),
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
                          bottom: 18.0,
                          left: 2.0,
                        ),
                        child: Image.asset(
                          // height: responsive.dp(12),
                          width: responsive.wp(25),
                          ImageKey.imagePokemon,
                          fit: BoxFit.cover,
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
