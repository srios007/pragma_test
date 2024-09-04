import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('es', ''),
      getPages: AppPages.routes,
      initialRoute: _setInitialRoute(),
      locale: Get.deviceLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('es'), Locale('en')],
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Palette.mainColor,
          iconTheme: IconThemeData(color: Palette.white),
          titleTextStyle: TextStyle(color: Palette.white, fontSize: 18),
          centerTitle: true,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Palette.white,
      ),
      title: 'Application',
      useInheritedMediaQuery: true,
    );
  }

  String _setInitialRoute() {
    final box = GetStorage();
    if (box.hasData('user')) {
      return Routes.HOME;
    }
    return Routes.HOME;
  }
}
