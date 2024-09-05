import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/widgets.dart';
import '../controllers/home_controller.dart';
import '../widgets/widgets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          children: [
            const SizedBox(height: 10),
            SearchInput(
              focusNode: controller.focusNode,
              onChanged: controller.onSearchChanged,
              textEditingController: controller.searchController,
            ),
            Expanded(
              child: Visibility(
                visible: controller.isSearching.value,
                replacement: FutureBuilder(
                  future: controller.catService.getBreeds(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: LoadingWidget());
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final item = snapshot.data![index];
                          return CatItem(item: item, controller: controller);
                        },
                      );
                    }
                  },
                ),
                child: ListView.builder(
                  itemCount: controller.catsSearchList.length,
                  itemBuilder: (context, index) {
                    final item = controller.catsSearchList[index];
                    item.breeds![0].imageUrl = item.url;
                    return CatItem(
                      item: item.breeds![0],
                      controller: controller,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
