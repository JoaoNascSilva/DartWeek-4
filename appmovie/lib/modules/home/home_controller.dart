import 'package:appmovie/services/login/login_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _pageIndex = 0.obs;
  static const NAVIGATOR_KEY = 1;
  static const INDEX_PAGE_EXIT = 2;
  final _pages = ['/movies', '/favorites'];
  final LoginService _loginService;

  HomeController({
    required LoginService loginService,
  }) : _loginService = loginService;

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);
    if (page == INDEX_PAGE_EXIT) {
      _loginService.logout();
    } else
      Get.offAllNamed(_pages[page], id: NAVIGATOR_KEY);
  }
}
