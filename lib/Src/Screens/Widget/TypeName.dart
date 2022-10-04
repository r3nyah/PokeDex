import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_api/Src/Screens/Const/Constants.dart';
import 'package:pokedex_api/Src/Service/Model/Model.dart';

class PokeNameTypeWidget extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameTypeWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0.5.sh,
      ),
      child: Container(
        height: ScreenUtil().orientation == Orientation.portrait
            ? 0.15.sh
            : 0.15.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    pokemon.name ?? "",
                    style: Constants.constTitleStyle(),
                  ),
                ),
                Text(
                  ("#${pokemon.num}"),
                  style: Constants.constTitleStyle(),
                ),
              ],
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Chip(
              label: Text(
                pokemon.type?.join(" , ") ?? "",
                style: Constants.typeChipTitleStyle(),
              )
            )
          ],
        ),
      )
    );
  }
}
