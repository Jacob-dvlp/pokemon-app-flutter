import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../helpers/type_color.dart';
import '../../../../style/app_style.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../infra/repository/imports.dart';

class AboutHeaderWidget extends StatelessWidget {
  final Pokemon pokemon;
  const AboutHeaderWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resposive = Responsive(context);
    return Column(
      children: [
        Container(
          width: resposive.wp(100),
          decoration: BoxDecoration(
            color: setTypeColor(pokemon.type1!).withAlpha(50),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              CustomAppBar(
                widget: GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppStyle.colorSecundary,
                  ),
                ),
                isHome: false,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 87,
                  right: 86,
                  top: 33,
                ),
                child: Hero(
                  tag: "",
                  child: SvgPicture.network(
                    '${BaseUrl.baseUrlImage}${pokemon.id}.svg',
                    height: 197,
                    width: 202,
                    semanticsLabel: 'A shark?!',
                    placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
