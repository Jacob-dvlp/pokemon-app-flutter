import 'package:flutter/material.dart';

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
        //  width: 159.63,
        // height: 110.94,
      ),
    );
  }
}
