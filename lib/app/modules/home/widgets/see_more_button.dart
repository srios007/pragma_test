import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/models.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/utils.dart';
import '../controllers/home_controller.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    super.key,
    required this.item,
    required this.controller,
  });

  final Cat item;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.focusNode.unfocus();
        Get.toNamed(
          Routes.CAT_DETAIL,
          arguments: {'cat': item},
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Palette.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'See more',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
