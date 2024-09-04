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
    return FutureBuilder(
      future: controller.catService.getCatsImages(breedIds: cat.id!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox(
            width: Get.width,
            height: Get.width,
            child: const Center(
              child: LoadingWidget(),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          cat.imageUrl = snapshot.data;
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImageWidget(
              width: Get.width,
              height: Get.width,
              imageUrl: snapshot.data!,
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
