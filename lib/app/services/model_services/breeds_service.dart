
import 'package:get/get.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import '../services.dart';

class CatService extends GetxService {
  factory CatService() {
    return _instance;
  }

  CatService._internal();
  static final CatService _instance = CatService._internal();

  Future<List<Cat>> getBreeds() async {
    final response = await DioService.instance.get(ApiEndpoints.breeds);
    if (response != null && response.data != null) {
      final List<dynamic> data = response.data;
      return data.map((e) => Cat.fromJson(e)).toList();
    }
    return [];
  }
}
