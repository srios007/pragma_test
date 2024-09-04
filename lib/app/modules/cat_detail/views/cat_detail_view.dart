import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/widgets.dart';
import '../controllers/cat_detail_controller.dart';
import '../widgets/cat_info_item.dart';

class CatDetailView extends GetView<CatDetailController> {
  const CatDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.cat.name!),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImageWidget(
                width: Get.width,
                height: Get.width,
                imageUrl: controller.cat.imageUrl!,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CatInfoWidget(
                      title: 'Description',
                      value: controller.cat.description!,
                    ),
                    CatInfoWidget(
                      title: 'Temperament',
                      value: controller.cat.temperament!,
                    ),
                    CatInfoWidget(
                      title: 'Origin',
                      value: controller.cat.origin!,
                    ),
                    CatInfoWidget(
                      title: 'Life Span',
                      value: controller.cat.lifeSpan!,
                    ),
                    CatInfoWidget(
                      title: 'Weight (Imperial)',
                      value: controller.cat.weight!.imperial!,
                    ),
                    CatInfoWidget(
                      title: 'Weight (Metric)',
                      value: controller.cat.weight!.metric!,
                    ),
                    CatInfoWidget(
                      title: 'Affection Level',
                      value: controller.cat.affectionLevel.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Child Friendly',
                      value: controller.cat.childFriendly.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Dog Friendly',
                      value: controller.cat.dogFriendly.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Energy Level',
                      value: controller.cat.energyLevel.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Grooming',
                      value: controller.cat.grooming.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Health Issues',
                      value: controller.cat.healthIssues.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Intelligence',
                      value: controller.cat.intelligence.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Shedding Level',
                      value: controller.cat.sheddingLevel.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Social Needs',
                      value: controller.cat.socialNeeds.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Stranger Friendly',
                      value: controller.cat.strangerFriendly.toString(),
                    ),
                    CatInfoWidget(
                      title: 'Vocalisation',
                      value: controller.cat.vocalisation.toString(),
                    ),
                    CatInfoWidget(
                      title: 'CFA URL',
                      value: controller.cat.cfaUrl!,
                    ),
                    CatInfoWidget(
                      isUrl: true,
                      title: 'Vetstreet URL',
                      value: controller.cat.vetstreetUrl!,
                    ),
                    CatInfoWidget(
                      isUrl: true,
                      title: 'Vcahospitals URL',
                      value: controller.cat.vcahospitalsUrl!,
                    ),
                    CatInfoWidget(
                      isUrl: true,
                      title: 'Wikipedia URL',
                      value: controller.cat.wikipediaUrl!,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
