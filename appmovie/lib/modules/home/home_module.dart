import 'package:appmovie/application/modules/modules.dart';
import 'package:appmovie/modules/home/home_binding.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      binding: HomeBinding(),
      page: () => HomePage(),
    )
  ];
}
