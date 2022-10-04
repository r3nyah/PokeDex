import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_api/Src/Screens/Const/UiHelper.dart';
import 'package:pokedex_api/Src/Screens/Const/Constants.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'Material/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiHelper.getAppTitleWidgetHeigth(),
      child: Stack(
        children: [
          Padding(
            padding: UiHelper.DefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.constTitleStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              pokeballImageUrl,
              width: ScreenUtil().orientation == Orientation.portrait
                ? 0.2.sh
                : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
