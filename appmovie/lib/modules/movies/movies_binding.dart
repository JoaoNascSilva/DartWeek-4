import 'package:appmovie/modules/movies/movies_controller.dart';
import 'package:appmovie/repositories/genres/genres_repository.dart';
import 'package:appmovie/repositories/genres/genres_repository_impl.dart';
import 'package:appmovie/services/genres/genres_service.dart';
import 'package:appmovie/services/genres/genres_service_impl.dart';
import 'package:get/get.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
      () => GenresRepositoryImpl(
        restClient: Get.find(),
      ),
    );

    Get.lazyPut<GenresService>(
      () => GenresServiceImpl(
        genresRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => MoviesController(
        genresService: Get.find(),
        moviesService: Get.find(),
      ),
    );
  }
}
