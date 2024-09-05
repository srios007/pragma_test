import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';
import 'app/services/services.dart';
import 'app/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await GetStorage.init();
  Get.put(BreedsService());
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
      initialRoute: Routes.HOME,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('es'), Locale('en')],
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Palette.mainColor,
          iconTheme: IconThemeData(color: Palette.black),
          titleTextStyle: TextStyle(
            color: Palette.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Palette.white,
      ),
      title: 'Application',
      useInheritedMediaQuery: true,
    );
  }
}
