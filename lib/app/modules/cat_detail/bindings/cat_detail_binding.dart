import 'package:get/get.dart';

import '../controllers/cat_detail_controller.dart';

class CatDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatDetailController>(
      () => CatDetailController(),
    );
  }
}
