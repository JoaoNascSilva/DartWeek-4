import 'package:appmovie/application/modules/modules.dart';
import 'package:appmovie/modules/movies/movies_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'movies_page.dart';

class MoviesModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movies',
      binding: MoviesBinding(),
      page: () => MoviesPage(),
    )
  ];
}
