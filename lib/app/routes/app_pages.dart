import 'package:get/get.dart';

import '../modules/cat_detail/bindings/cat_detail_binding.dart';
import '../modules/cat_detail/views/cat_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: _Paths.CAT_DETAIL,
      page: () => const CatDetailView(),
      binding: CatDetailBinding(),
      transition: Transition.native,
    ),
  ];
}
