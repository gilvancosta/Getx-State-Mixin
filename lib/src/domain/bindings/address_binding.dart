import 'package:get/get.dart';

import '../../ui/pages/home/controller/address_controller_mixin.dart';
import '../../ui/pages/home/controller/address_controller.dart';
import '../repositories/andress/address_repository.dart';

class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressRepository());
    Get.put(AndressController(repository: Get.find()));
    Get.put(AddressControllerMixin(repository: Get.find()));


 
  }
}
