// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print

import 'dart:ffi';

import 'package:get/get.dart';

import 'package:getx_state_mixin/src/domain/repositories/andress/address_repository.dart';

class AndressController extends GetxController {
  final AddressRepository repository;
  final _cepSearch = ''.obs;
  final _address = Rxn<AddressRepository>();

  AndressController({
    required this.repository,
  });

  // Setter for _cepSearch
  set cepSearch(String value) => _cepSearch.value = value;

  // Getter for _address
  AddressRepository? get address => _address.value;

  Future<void> findAddress() async {
    try {
      final result = await repository.getAndress(_cepSearch.value);
      print(result);
    } catch (e) {
      print(e);
    }
  }
}
