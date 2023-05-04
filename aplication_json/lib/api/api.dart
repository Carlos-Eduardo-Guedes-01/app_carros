import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/deputados.dart';

Future<List<Dados>> dados() async {
  final List<dynamic> result = await fetchUsers();
  //print(result);
  List<Dados> deputados;
  deputados = (result).map((deputado) => Dados.fromJson(deputado)).toList();
  return deputados;
}

const String url =
    "https://dadosabertos.camara.leg.br/arquivos/deputados/json/deputados.json";
Future<List<dynamic>> fetchUsers() async {
  var result = await http.get(Uri.parse(url));
  return jsonDecode(result.body)['dados'];
}
