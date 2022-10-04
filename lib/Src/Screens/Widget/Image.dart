import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_api/Src/Screens/Const/UiHelper.dart';
import 'package:pokedex_api/Src/Service/Model/Model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'Material/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: UiHelper.calculatePokeImageAndBallSize(),
            height: UiHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => Icon(Icons.ac_unit),
              imageUrl: pokemon.img ?? 'N/A',
              width: UiHelper.calculatePokeImageAndBallSize(),
              height: UiHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context,url)=>CircularProgressIndicator(color: Colors.white,),
            ),
          )
        )
      ],
    );
  }
}
