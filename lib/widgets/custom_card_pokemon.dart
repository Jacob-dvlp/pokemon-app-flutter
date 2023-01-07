import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/extension_helper.dart';
import '../helpers/type_color.dart';
import '../src/infra/model/result_pokemon.dart';
import '../src/presetation/about/about_page.dart';
import '../theme/app_theme.dart';
import '../utils/image/image_key.dart';
import '../utils/url/base_url.dart';

class CustomCardPokemon extends StatelessWidget {
  final CardModel card;
  const CustomCardPokemon({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, bottom: 10.13),
      child: GestureDetector(
        onTap: () => Get.toNamed(AboutPage.routName, arguments: [card.id]),
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
                    child: Hero(
                      tag: card.id!,
                      child: SvgPicture.network(
                        '${BaseUrl.baseUrlImage}${card.id}.svg',
                        semanticsLabel: 'A shark?!',
                        placeholderBuilder: (BuildContext context) => Container(
                            padding: const EdgeInsets.all(30.0),
                            child: const CircularProgressIndicator()),
                      ),
                    ),
                  ),
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
                        card.name!.capitalizeFirstLetter(),
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppTheme.colorSecundary),
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
                        color: setTypeColor(card.type1!),
                      ),
                      child: Text(
                        card.type1!.capitalizeFirstLetter(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppTheme.colorPrimary),
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
                            fontSize: 14,
                            color: AppTheme.colorSecundary),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
