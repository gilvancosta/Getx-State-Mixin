import 'dart:convert';


class AddressEntity {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  AddressEntity({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
    };
  }

  factory AddressEntity.fromMap(Map<String, dynamic> map) {
    return AddressEntity(
      cep: map['cep'] as String,
      logradouro: map['logradouro'] as String,
      complemento: map['complemento'] as String,
      bairro: map['bairro'] as String,
      localidade: map['localidade'] as String,
      uf: map['uf'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressEntity.fromJson(String source) => AddressEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
