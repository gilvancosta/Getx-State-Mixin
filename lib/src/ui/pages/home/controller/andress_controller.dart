// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:get/get.dart';

import 'package:getx_state_mixin/src/domain/repositories/andress/andress_repository.dart';

class AndressController extends GetxController {
  final AndressRepository  repository;
  AndressController({
    required this.repository,
  });
  
}
