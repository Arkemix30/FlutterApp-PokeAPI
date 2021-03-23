import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var allPokemons = [];
  Color pokebg = const Color.fromARGB(255, 0, 99, 177);
  void getPokemons() async {
    Response response = await get(
        Uri.https('pokeapi.co', '/api/v2/pokemon', {'limit': '1118'}));

    Map data = jsonDecode(response.body);

    Navigator.pushNamed(context, '/pokemon',
        arguments: {'pokemons': data['results']});
  }

  @override
  void initState() {
    super.initState();
    getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokebg,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.yellow,
          size: 50.0,
        ),
      ),
    );
  }
}
