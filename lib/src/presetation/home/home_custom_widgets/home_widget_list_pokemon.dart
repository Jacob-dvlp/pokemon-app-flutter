import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

import '../../../../routes/importes.dart';
import '../../../../widgets/custom_card_pokemon.dart';
import '../../../../widgets/custom_skeleton/custom_widget_card_pokemon_skeleton.dart';
import '../../../infra/interface/imports.dart';
import '../home_controller.dart';

class CustomWidgetListPokemon extends GetView<HomeController> {
  const CustomWidgetListPokemon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsivel = Responsive(context);

    return GetBuilder<HomeController>(
      init: HomeController(getPokemonProvider: Get.find()),
      builder: (controller) {
        return controller.obx(
          (state) {
            return SizedBox(
              height: responsivel.hp(35),
              child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 7.37),
                  child: SmartRefresher(
                    onRefresh: controller.onRefresh,
                    header: const WaterDropHeader(),
                    controller: controller.refreshController,
                    enablePullDown: false,
                    enablePullUp: true,
                    onLoading: controller.onLoading,
                    footer: CustomFooter(
                      builder: (BuildContext context, LoadStatus? mode) {
                        Widget body;
                        if (mode == LoadStatus.idle) {
                          body = const Text("Puxe para carga");
                        } else if (mode == LoadStatus.loading) {
                          body = const CupertinoActivityIndicator();
                        } else if (mode == LoadStatus.failed) {
                          body = const Text(
                              "Falha ao carregar! Clique em tentar novamente!");
                        } else if (mode == LoadStatus.canLoading) {
                          body = const Text("Solte para carregar mais");
                        } else {
                          body = const Text("Sem dados");
                        }
                        return SizedBox(
                          height: 55.0,
                          child: Center(child: body),
                        );
                      },
                    ),
                    child: GridView.builder(
                      scrollDirection: responsivel.width < 1074
                          ? Axis.vertical
                          : Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: controller.pokemonSearch.isEmpty
                          ? controller.pokemon.length
                          : controller.pokemonSearch.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: controller.mainAxisSpacing,
                          crossAxisSpacing: responsivel.width < 1074
                              ? responsivel.dp(0.15)
                              : responsivel.dp(0.1),
                          childAspectRatio: responsivel.width < 1074
                              ? responsivel.dp(0.15)
                              : responsivel.dp(0.1),
                          crossAxisCount: responsivel.width < 1074
                              ? controller.crossAxisCount
                              : 1),
                      itemBuilder: (context, index) {
                        final CardModel card = controller.pokemonSearch.isEmpty
                            ? controller.pokemon[index]
                            : controller.pokemonSearch[index];

                        return CustomCardPokemon(
                          card: card,
                        );
                      },
                    ),
                  )),
            );
          },
          onLoading: const SkeletonGridLoader(
            builder: Padding(
              padding: EdgeInsets.only(left: 30, right: 7.37, top: 30),
              child: SizedBox(child: CustomWidgetCardPokemonSkeleton()),
            ),
            items: 3,
            itemsPerRow: 3,
            crossAxisSpacing: 8,
            highlightColor: Colors.white,
            direction: SkeletonDirection.ltr,
            childAspectRatio: 1,
          ),
          onError: (error) => Center(
            child: Text(
              error.toString(),
            ),
          ),
        );
      },
    );
  }
}
