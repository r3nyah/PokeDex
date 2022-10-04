import 'package:flutter/material.dart';
import 'package:pokedex_api/Src/Service/Model/Model.dart';
import 'package:pokedex_api/Src/Service/Service/Service.dart';
import 'package:pokedex_api/Src/Screens/Widget/AppTitle.dart';
import 'package:pokedex_api/Src/Screens/Widget/List.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context,orientation) => Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ]
        )
      )
    );
  }
}
