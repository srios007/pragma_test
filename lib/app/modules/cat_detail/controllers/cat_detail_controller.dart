import 'package:get/get.dart';

import '../../../models/models.dart';

class CatDetailController extends GetxController {
  late Cat cat;
 

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as Map<String, dynamic>;
    cat = arguments['cat'] as Cat;
 
  }
}
