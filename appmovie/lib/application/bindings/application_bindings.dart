import 'package:appmovie/application/auth/auth_service.dart';
import 'package:appmovie/application/rest_client/rest_client.dart';
import 'package:appmovie/repositories/login/login_repository.dart';
import 'package:appmovie/repositories/login/login_repository_impl.dart';
import 'package:appmovie/repositories/movies/movies_repository.dart';
import 'package:appmovie/repositories/movies/movies_repositry_impl.dart';
import 'package:appmovie/services/login/login_service.dart';
import 'package:appmovie/services/login/login_service_impl.dart';
import 'package:appmovie/services/movies/movies_service.dart';
import 'package:appmovie/services/movies/movies_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthService()).init();
    Get.lazyPut(() => RestClient());
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );

    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(
        loginRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<MoviesRepository>(
      () => MoviesRepositoryImpl(
        restClient: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<MoviesService>(
      () => MoviesServiceImpl(
        moviesRepository: Get.find(),
      ),
      fenix: true,
    );
  }
}
