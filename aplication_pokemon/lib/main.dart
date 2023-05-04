import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Pokemons {
  List<Dados>? dados;

  Pokemons({this.dados});

  Pokemons.fromJson(Map<String, dynamic> json) {
    if (json['dados'] != null) {
      dados = <Dados>[];
      json['dados'].forEach((v) {
        dados!.add(new Dados.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dados != null) {
      data['dados'] = this.dados!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/*class Argumentos {
  final int id;
  final NetworkImage img;
  final List<String> name;
  final String? heigth;
  final List<String> evolution;
  final List<String> weaknesses;
  Argumentos(this.id, this.img, this.evolution, this.heigth, this.name,
      this.weaknesses);
}*/

class Dados {
  int? id;
  String? name;
  NetworkImage? img;
  //String? heigth;
  //String? evolution;
  //List<String>? weaknesses;

  Dados({
    this.id,
    this.name,
    this.img,
    //this.evolution,
    //this.heigth,
    //this.weaknesses,
  });

  Dados.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    //evolution = json['evolution'];
    //heigth = json['height'];
    //weaknesses = json['weaknesses'];

    /* */
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['img'] = this.img;
//    data['heigth'] = this.heigth;
//    data['next_evolution'] = this.evolution;
//    data['weaknesses'] = this.weaknesses;
    /*final double heigth;
  final List<String> evolution;
  final List<String> weaknesses;*/
    return data;
  }
}

Future<List<Dados>> dados() async {
  final List<dynamic> result = await fetchUsers();
  //print(result);
  List<Dados> pokemons;
  pokemons = (result).map((pokemon) => Dados.fromJson(pokemon)).toList();
  return pokemons;
}

const String url =
    "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

Future<List<dynamic>> fetchUsers() async {
  var result = await http.get(Uri.parse(url));
  return jsonDecode(result.body)['pokemon'];
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Lista de Pokemons';
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args);
    return MaterialApp(title: appTitle, initialRoute: '/', routes: {
      '/': (context) => MyHomePage(title: appTitle),
      pokemonwidget.routeName: (context) {
        return pokemonwidget();
      },
    });
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Dados>>(
        future: dados(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return PokemonsList(pokemons: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class PokemonsList extends StatelessWidget {
  const PokemonsList({Key? key, required this.pokemons}) : super(key: key);
  final List<Dados> pokemons;
  @override
  Widget build(BuildContext context) {
    print(pokemons);
    return ListView.builder(
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                    context,
                    '/details',
                  ),
              child: Image.network("${pokemons[index].img}")),
          subtitle: Text("${pokemons[index].name}"),
        );
      },
    );
  }
}

class pokemonwidget extends StatelessWidget {
  static const routeName = 'details';
  const pokemonwidget({super.key});

  @override
  Widget build(BuildContext context) {
//    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;
//    print(argumentos);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes Pokemon'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(),
            ],
          )
        ],
      ),
    );
  }
}
