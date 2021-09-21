import 'package:appmovie/application/UI/movies_app_UIConfig.dart';
import 'package:appmovie/application/bindings/application_bindings.dart';
import 'package:appmovie/modules/home/home_module.dart';
import 'package:appmovie/modules/login/login_module.dart';
import 'package:appmovie/modules/movies/movie_detail/movie_detail_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'modules/splash/splash_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  RemoteConfig.instance.fetchAndActivate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ApplicationBindings(),
      title: MoviesAppUiConfig.title,
      theme: MoviesAppUiConfig.themeData,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
