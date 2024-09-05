import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/models.dart';
import '../../../services/services.dart';

class HomeController extends GetxController {
  final catService = Get.find<BreedsService>();
  final searchController = TextEditingController();
  final isSearching = false.obs;
  List<CatSearch> catsSearchList = [];
  Timer? _debounce;
  final focusNode = FocusNode();

  @override
  void onClose() {
    searchController.dispose();
    _debounce?.cancel();
    super.onClose();
  }

  void onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      performSearch(query);
    });
  }

  void performSearch(String query) {
    if (query == '') {
      catsSearchList.clear();
      isSearching.value = false;
      return;
    }
    if (query.length < 4) {
      Get.snackbar(
        'Search query too short',
        'Please enter at least 3 characters',
        backgroundColor: Colors.grey.withOpacity(0.4),
      );
      return;
    }
    catService.getCatsSearch(breedIds: query).then((value) {
      if (value.isEmpty) {
        catsSearchList.clear();

        isSearching.value = false;
        Get.snackbar(
          'Data not found',
          'There no data found for the search query',
          backgroundColor: Colors.grey.withOpacity(0.4),
        );
        return;
      }
      catsSearchList.addAll(value);
      isSearching.value = true;
      focusNode.unfocus();
    });
  }
}
