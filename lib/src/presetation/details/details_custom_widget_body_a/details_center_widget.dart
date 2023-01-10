import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../helpers/extension_helper.dart';
import '../../../../helpers/type_color.dart';
import '../../../../style/app_style.dart';
import '../../../../utils/image/image_key.dart';
import '../../../infra/repository/imports.dart';
import '../details_controller.dart';

class AboutCenterWidget extends StatelessWidget {
  final Pokemon pokemon;
  const AboutCenterWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name!.capitalizeFirstLetter(),
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppStyle.colorSecundary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 18,
                    ),
                    child: Text(
                      'Cod: #${pokemon.id}',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppStyle.colorAboutText,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      GetBuilder<DetailController>(
                        init: DetailController(Get.find()),
                        builder: (controller) {
                          return GestureDetector(
                              onTap: () {
                                controller.btnFavorite();
                              },
                              child: controller.pokemon!.favorite!
                                  ? Image.asset(ImageKey.iconFavorite)
                                  : Image.asset(
                                      ImageKey.iconFavorite,
                                      color: Colors.red,
                                    ));
                        },
                      ),
                      const SizedBox(
                        width: 6.75,
                      ),
                      GestureDetector(
                          onTap: () {
                            Share.share(
                                "${BaseUrl.baseUrlImage}${pokemon.id}.svg",
                                subject: pokemon.name);
                          },
                          child: Image.asset(ImageKey.iconShared)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      decoration:
                          BoxDecoration(color: setTypeColor(pokemon.type1!)),
                      width: 50,
                      height: 22,
                      child: Text(
                        pokemon.type1!.capitalizeFirstLetter(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppStyle.colorPrimary,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
