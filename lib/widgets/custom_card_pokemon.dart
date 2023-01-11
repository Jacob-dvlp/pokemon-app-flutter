import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/extension_helper.dart';
import '../helpers/type_color.dart';
import '../src/infra/repository/imports.dart';
import '../src/presetation/details/details_page.dart';
import '../style/app_style.dart';
import '../utils/image/image_key.dart';

class CustomCardPokemon extends StatelessWidget {
  final CardModel card;
  const CustomCardPokemon({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.only(right: 7, bottom: 10.13),
      child: GestureDetector(
        onTap: () => Get.toNamed(DetailPage.routName, arguments: [card.id]),
        child: Container(
            height: 20,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 1,
                spreadRadius: 0.5,
                color: Colors.black26,
              )
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 12,
                            bottom: 3,
                          ),
                          child: Text(
                            card.name!.capitalizeFirstLetter(),
                            maxLines: 1,
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: responsive.dp(1.9),
                                color: AppStyle.colorSecundary),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: responsive.wp(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: setTypeColor(card.type1!),
                          ),
                          child: Text(
                            card.type1!.capitalizeFirstLetter(),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400,
                                fontSize: responsive.dp(1.4),
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
                            '#${card.id}',
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400,
                                fontSize: responsive.dp(1.4),
                                color: AppStyle.colorSecundary),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 17.4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: responsive.wp(20),
                            height: responsive.hp(15),
                            child: Image.asset(
                              ImageKey.bgImageVetor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2,
                        top: 17.4,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            width: responsive.wp(20),
                            height: responsive.hp(15),
                            child: SvgPicture.network(
                              '${BaseUrl.baseUrlImage}${card.id}.svg',
                              semanticsLabel: 'A shark?!',
                              placeholderBuilder: (BuildContext context) =>
                                  Container(
                                padding: const EdgeInsets.all(20.0),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
