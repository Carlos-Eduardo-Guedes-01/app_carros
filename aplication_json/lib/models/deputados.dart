class Deputados {
  List<Dados>? dados;

  Deputados({this.dados});

  Deputados.fromJson(Map<String, dynamic> json) {
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

class Dados {
  String? nome;
  String? nomeCivil;
  String? siglaSexo;
  String? ufNascimento;
  String? municipioNascimento;

  Dados(
      {this.nome,
      this.nomeCivil,
      this.siglaSexo,
      this.ufNascimento,
      this.municipioNascimento});

  Dados.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    nomeCivil = json['nomeCivil'];
    siglaSexo = json['siglaSexo'];
    ufNascimento = json['ufNascimento'];
    municipioNascimento = json['municipioNascimento'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['nomeCivil'] = this.nomeCivil;
    data['siglaSexo'] = this.siglaSexo;
    data['ufNascimento'] = this.ufNascimento;
    data['municipioNascimento'] = this.municipioNascimento;
    return data;
  }
}
