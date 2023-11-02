// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print

import 'dart:ffi';

import 'package:get/get.dart';

import 'package:getx_state_mixin/src/domain/repositories/andress/address_repository.dart';

import '../../../../domain/Entities/cep/address_entity.dart';

class AndressController extends GetxController {
  final AddressRepository repository;
  final _cepSearch = ''.obs;
  final _address = Rxn<AddressEntity>();
  final _loading = false.obs;
  final _error = false.obs;

  AndressController({
    required this.repository,
  });

  // Setter for _cepSearch
  set cepSearch(String value) => _cepSearch.value = value;

  // Getter for _address
  AddressEntity? get address => _address.value;

  // Getter for _loading
  bool get isLoading => _loading.value;

  // Getter for _error
  bool get isError => _error.value;

  Future<void> findAddress() async {
    try {
      _loading(true);

      //await Future.delayed(const Duration(seconds: 2));
      await 2.seconds.delay();

      final result = await repository.getAndress(_cepSearch.value);
      print(result);

      _address(result);
      _loading(false);
      _error(false);
    } catch (e) {
      _error(true);
  
    } finally {
      _loading(false);
    }
  }
}
