import 'dart:developer';

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

  Future<String> getCatsImages({
    int limit = 1,
    required String breedIds,
  }) async {
    // headers: {'x-api-key': dotenv.env['API_KEY']},
    log('Entra a getCatsImages');
    final response = await DioService.instance.get(
      ApiEndpoints.images,
      queryParameters: {'limit': limit, 'breed_ids': breedIds},
    );
    if (response != null && response.data != null) {
      return response.data[0]['url'];
    }
    return '';
  }
}
