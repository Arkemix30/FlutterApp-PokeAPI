import 'package:http/http.dart';
import 'dart:convert';

class Pokemon {
  int id;
  String imageurl;
  String name;
  String exp;
  String hp;
  String ataque;
  String defensa;
  String especial;
  List<String> abilities;

  Pokemon(
      {this.id,
      this.imageurl,
      this.name,
      this.exp,
      this.hp,
      this.ataque,
      this.defensa,
      this.especial,
      this.abilities});

  void getStats() async {
    Response response =
        await get(Uri.https('pokeapi.co', '/api/v2/pokemon/$id'));
    Map data = jsonDecode(response.body);

    for (var i = 0; i < data['abilities'].length; i++) {
      abilities.add(data['abilities'][i]['ability']['name']);
    }
  }
}
