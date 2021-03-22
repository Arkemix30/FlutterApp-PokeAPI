import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var pokemons = [];
  void getData() async {
    Response response =
        await get(Uri.https('pokeapi.co', '/api/v2/pokemon/pikachu'));
    Map data = jsonDecode(response.body);
    var abilities = [];
    for (var i = 0; i < data['abilities'].length; i++) {
      abilities.add(data['abilities'][i]['ability']['name']);
    }
    print(abilities);
    print(data['abilities'].length);
    //print(data['abilities'][0]['ability']['name']);
  }

  void getPokemons() async {
    Response response = await get(
        Uri.https('pokeapi.co', '/api/v2/pokemon', {'limit': '1118'}));
    Map data = jsonDecode(response.body);

    for (var i = 0; i < data['results'].length; i++) {
      pokemons.add(data['results'][i]['name']);
    }
  }

  @override
  void initState() {
    super.initState();
    //getData();
    getPokemons();
  }

  Widget cardTemplate(pokemons) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              pokemons,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: pokemons.map((p) => cardTemplate(p)).toList(),
        ),
      ),
    );
  }
}
