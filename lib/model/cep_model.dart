class CepModel {
  final String cep;
  final String logradouro;
  final String complemento;
  final String localidade;
  final String uf;

  CepModel({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.localidade,
    required this.uf,
  });

  factory CepModel.fromJson(Map<String, dynamic> json) {
    return CepModel(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      localidade: json['localidade'],
      uf: json['uf'],
    );
  }

  Map<String, dynamic> toJson() => {
        'cep': cep,
        'logradouro': logradouro,
        'complemento': complemento,
        'localidade': localidade,
        'uf': uf,
      };
}
