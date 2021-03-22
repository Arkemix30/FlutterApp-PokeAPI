import 'package:flutter/material.dart';

class ChoosePokemon extends StatefulWidget {
  ChoosePokemon({Key key}) : super(key: key);

  @override
  _ChoosePokemonState createState() => _ChoosePokemonState();
}

class _ChoosePokemonState extends State<ChoosePokemon> {
  Color pokecolor = const Color.fromARGB(255, 255, 203, 0);
  Color pokebg = const Color.fromARGB(255, 0, 99, 177);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokebg,
      appBar: AppBar(
        backgroundColor: pokecolor,
        title: Text('Choose a Pokemon'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SafeArea(
                  child: Text(
            'Choose Pokemon',
            style: TextStyle(color: Colors.white),
          ))),
        ],
      ),
    );
  }
}
