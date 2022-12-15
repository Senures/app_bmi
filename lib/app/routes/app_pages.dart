import 'package:bmi_app/app/modules/home/home_bindings.dart';
import 'package:bmi_app/app/modules/result/result_screen.dart';
import 'package:get/get.dart';

import '../modules/home/home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.RESULT,
        page: () => const ResultScreen(),
        binding: HomeBinding()),
    /*  GetPage(
        name: Routes.RESULT,
       /*  page: () => SplashScreen(),
        binding: SplashBinding() */
        ), */
  ];
}
