import 'package:flutter/material.dart';

class CustomCardPokemon extends StatelessWidget {
  const CustomCardPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2.0,
        child: Padding(
            padding:
                const EdgeInsets.only(top: 14, left: 14, right: 14, bottom: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20.0,
                        child: Text("Pokemon",
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '#${""}',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  )
                ])));
  }
}
