import 'package:appmovie/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // Intenção de Contrução, Somente cria quando necessário
    Get.lazyPut(
      () => LoginController(
        loginService: Get.find(),
      ),
    );
  }
}
