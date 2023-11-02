// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print

import 'package:get/get.dart';

import '../../../../domain/Entities/cep/address_entity.dart';
import '../../../../domain/repositories/andress/address_repository.dart';

class AddressControllerMixin extends GetxController with StateMixin<AddressEntity> {
  final AddressRepository repository;
  final _cepSearch = ''.obs;

  AddressControllerMixin({
    required this.repository,
  });

  // Setter for _cepSearch
  set cepSearch(String value) => _cepSearch.value = value;

  @override
  void onReady() {
    change(null, status: RxStatus.empty());
  }

  Future<void> findAddress() async {
    try {
      change(state, status: RxStatus.loading());

      //await Future.delayed(const Duration(seconds: 2));
      await 2.seconds.delay();

      final result = await repository.getAndress(_cepSearch.value);
      print(result);

      change(result, status: RxStatus.success());
    } catch (e) {
      change(state, status: RxStatus.error(e.toString()));
    }
  }
}
