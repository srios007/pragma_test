import 'dart:developer';

import 'package:get/get.dart';

import '../../../services/services.dart';

class HomeController extends GetxController {
  final areaService = Get.find<CatService>();
  final pruebaaa = '';
  @override
  void onInit() {
    super.onInit();
    prueba();
  }

  prueba() async {
    final response = await areaService.getBreeds();

    log('Response: ${response.length}');
  }
}
