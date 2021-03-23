import 'package:flutter/material.dart';

class PokemonListCards extends StatelessWidget {
  const PokemonListCards({
    Key key,
    @required this.pokemon,
  }) : super(key: key);

  final pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              pokemon,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }
}
