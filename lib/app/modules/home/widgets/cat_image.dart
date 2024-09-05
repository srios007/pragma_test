import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/cat.dart';
import '../../../widgets/widgets.dart';
import '../controllers/home_controller.dart';

class CatImage extends StatelessWidget {
  final Cat cat;
  final HomeController controller;

  const CatImage({
    super.key,
    required this.cat,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImageWidget(
        width: Get.width,
        height: Get.width,
        imageUrl: cat.imageUrl == null
            ? 'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg'
            : cat.imageUrl!,
      ),
    );
  }
}
