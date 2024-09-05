import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../controllers/home_controller.dart';
import 'widgets.dart';

class CatItem extends StatelessWidget {
  const CatItem({
    super.key,
    required this.item,
    required this.controller,
  });

  final Cat item;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.focusNode.unfocus(),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SeeMoreButton(item: item, controller: controller),
              ],
            ),
            const SizedBox(height: 10),
            CatImage(cat: item, controller: controller),
            const SizedBox(height: 10),
            CatInfo(item: item),
          ],
        ),
      ),
    );
  }
}
