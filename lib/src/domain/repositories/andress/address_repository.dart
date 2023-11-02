import 'dart:developer';

import 'package:get/get.dart';

import '../../Entities/cep/address_entity.dart';

class AddressRepository extends GetConnect {
  Future<AddressEntity> getAndress(String cep) async {
    final result = await get('https://viacep.com.br/ws/$cep/json/');

    if (result.hasError) {
      log('Erro ao buscar o CEP', error: result.statusText);
      throw Exception('Erro ao buscar o CEP');
    }
    return AddressEntity.fromMap(result.body);
  }
}
