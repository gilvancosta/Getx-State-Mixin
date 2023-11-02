import 'package:get/get.dart';

import '../../ui/pages/home/controller/andress_controller.dart';
import '../repositories/andress/andress_repository.dart';

class AndressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndressRepository());
    Get.put(AndressController(repository: Get.find()));
  }
}
