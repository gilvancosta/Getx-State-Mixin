// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:get/get.dart';

import '../../../../domain/Entities/cep/address_entity.dart';
import '../../../../domain/repositories/andress/address_repository.dart';

class AddressSuperController extends SuperController<AddressEntity> {
  final AddressRepository repository;
  final _cepSearch = ''.obs;

  AddressSuperController({
    required this.repository,
  });

  @override
  void onDetached() {
    print(' ############ ondetached #############');
  }

  @override
  void onInactive() {
    print(' ############ onInactive #############');
  }

  @override
  void onPaused() {
    print(' ############ onPaused #############');
  }

  @override
  void onHidden() {
    print(' ############ onHidden #############');
  }

  @override
  void onResumed() {
    print(' ############ onResumed #############');
  }

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

      final result = await _findAddressRepository();
      print(result);

      change(result, status: RxStatus.success());
    } catch (e) {
      change(state, status: RxStatus.error(e.toString()));
    }
  }

  Future<void> findAddressV2() async {
    change(state, status: RxStatus.loading());

    await 2.seconds.delay();

    // append(() => _findAddressRepository);

    append(() => () {
          final address = _cepSearch.value;
          return repository.getAndress(address);
        });
  }

  Future<AddressEntity> _findAddressRepository() async => await repository.getAndress(_cepSearch.value);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
