import 'package:flutter/material.dart';
import 'package:pokeapi/widgets/PokemonListCards.dart';

class ChoosePokemon extends StatefulWidget {
  ChoosePokemon({Key key}) : super(key: key);

  @override
  _ChoosePokemonState createState() => _ChoosePokemonState();
}

class _ChoosePokemonState extends State<ChoosePokemon> {
  Map allPokemonsList = {};
  var pokemons = [];

  Color pokecolor = const Color.fromARGB(255, 255, 203, 0);
  Color pokebg = const Color.fromARGB(255, 0, 99, 177);

  @override
  Widget build(BuildContext context) {
    allPokemonsList = ModalRoute.of(context).settings.arguments;
    for (var i = 0; i < allPokemonsList['pokemons'].length; i++) {
      pokemons.add(allPokemonsList['pokemons'][i]['name']);
    }
    return Scaffold(
      backgroundColor: pokebg,
      appBar: AppBar(
        backgroundColor: pokecolor,
        title: Text('Choose a Pokemon'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: pokemons.map((p) => PokemonListCards(pokemon: p)).toList(),
        ),
      ),
    );
  }
}
