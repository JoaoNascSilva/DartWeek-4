import 'package:appmovie/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        loginService: Get.find(),
      ),
      fenix: true,
    );
  }
}
