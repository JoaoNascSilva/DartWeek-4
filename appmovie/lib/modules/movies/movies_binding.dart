import 'package:appmovie/modules/movies/movies_controller.dart';
import 'package:get/get.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoviesController());
  }
}
