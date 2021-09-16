import 'package:appmovie/application/modules/modules.dart';
import 'package:appmovie/modules/login/login_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'login_page.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      binding: LoginBinding(),
      page: () => LoginPage(),
    )
  ];
}
