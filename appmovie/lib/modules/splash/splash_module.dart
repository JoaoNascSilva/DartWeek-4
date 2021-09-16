import 'package:appmovie/application/modules/modules.dart';
import 'package:appmovie/modules/splash/splash_binding.dart';
import 'package:appmovie/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      binding: SplashBinding(),
      page: () => SplashPage(),
    )
  ];
}
