import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import '../services.dart';

class BreedsService extends GetxService {
  factory BreedsService() {
    return _instance;
  }

  BreedsService._internal();
  static final BreedsService _instance = BreedsService._internal();

  Future<List<Cat>> getBreeds() async {
    final response = await DioService.instance.get(ApiEndpoints.breeds);
    if (response != null && response.data != null) {
      final List<dynamic> data = response.data;

      return data.map((e) => Cat.fromJson(e)).toList();
    }
    return [];
  }

  Future<List<CatSearch>> getCatsSearch({required String breedIds}) async {
    final response = await DioService.instance.get(
      ApiEndpoints.images,
      queryParameters: {
        'api_key': dotenv.env['API_KEY'],
        'breed_ids': breedIds,
        'limit': 20,
      },
    );
    if (response != null && response.data != null) {
      final List<dynamic> data = response.data;
      return data.map((e) => CatSearch.fromJson(e)).toList();
    }
    return [];
  }
}
