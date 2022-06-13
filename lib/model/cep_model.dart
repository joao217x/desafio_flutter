class CepModel {
  final String cep;
  final String rua; //logradouro
  final String numero; //complemento
  final String bairro;
  final String cidade; //localidade
  final String uf; //

  CepModel({
    required this.cep,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.uf,
  });

  factory CepModel.fromJson(Map<String, dynamic> json) {
    return CepModel(
      cep: json['cep'],
      rua: json['logradouro'],
      numero: json['complemento'],
      bairro: json['bairro'],
      cidade: json['localidade'],
      uf: json['uf'],
    );
  }

  Map<String, dynamic> toJson() => {
        'cep': cep,
        'logradouro': rua,
        'complemento': numero,
        'bairro': bairro,
        'localidade': cidade,
        'uf': uf,
      };
}
