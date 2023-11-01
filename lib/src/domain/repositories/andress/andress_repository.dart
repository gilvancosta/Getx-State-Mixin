import 'dart:developer';

import 'package:get/get.dart';

import '../../Entities/cep/andress_entity.dart';

class AndressRepository extends GetConnect {
  Future<AndressEntity> getAndress(String cep) async {
    final result = await get('https://viacep.com.br/ws/$cep/json/');

    if (result.hasError) {
      log('Erro ao buscar o CEP', error: result.statusText);
      throw Exception('Erro ao buscar o CEP');
    }
    return AndressEntity.fromMap(result.body);
  }
}
