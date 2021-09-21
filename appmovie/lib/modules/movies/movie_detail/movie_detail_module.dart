import 'package:appmovie/application/modules/modules.dart';
import 'package:appmovie/modules/movies/movie_detail/movie_detail_bindings.dart';
import 'package:appmovie/modules/movies/movie_detail/movie_detail_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class MovieDetailModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => MovieDetailPage(),
      binding: MovieDetailBindings(),
    ),
  ];
}
