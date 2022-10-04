import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_api/Src/Screens/Const/UiHelper.dart';
import 'package:pokedex_api/Src/Service/Model/Model.dart';
import 'package:pokedex_api/Src/Screens/Const/Constants.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeInfo({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: UiHelper.IconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          ],
        ),
      ),
    );
  }

  _buildInfoRow(String label,dynamic value){
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Constants.PokeInfoLabelTextStyle(),
          ),
          if(value is List && value.isNotEmpty)
            Text(
              value.join(" , "),
              style: Constants.PokeInfoLabelTextStyle(),
            )
          else if(value == null)
            Text(
              "Not Available",
              style: Constants.PokeInfoLabelTextStyle(),
            )
          else
            Text(
              value.toString(),
              style: Constants.PokeInfoLabelTextStyle(),
            )
        ],
      ),
    );
  }
}
