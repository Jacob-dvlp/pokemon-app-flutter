import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/extension_helper.dart';
import '../helpers/type_color.dart';
import '../routes/importes.dart';
import '../src/presetation/home/home_controller.dart';
import '../style/app_style.dart';

class CustomCardType extends StatelessWidget {
  final String name;
  const CustomCardType({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(Get.find()),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            controller.searchPokemon();
            controller.filterTypeName = name;
          },
          child: Container(
            width: 66.95,
            height: 24,
            decoration: BoxDecoration(
                color: setTypeColor(name),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 2,
                bottom: 2,
              ),
              child: Text(
                name.capitalizeFirstLetter(),
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppStyle.colorPrimary),
              ),
            ),
          ),
        );
      },
    );
  }
}
