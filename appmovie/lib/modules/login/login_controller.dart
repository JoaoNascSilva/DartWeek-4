import 'package:appmovie/application/UI/loader/loader.mixin.dart';
import 'package:appmovie/application/UI/messages/messages_mixin.dart';
import 'package:appmovie/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      //callable class
      loading(true);
      await _loginService.login();
      loading(false);

      message(
        MessageModel.info(
          title: 'Sucesso',
          message: 'Login realizado com sucesso.',
        ),
      );
    } catch (e, stack) {
      print(e);
      print(stack);
      loading(false);
      MessageModel.error(
        title: 'Falha',
        message: 'Verifique suas credenciais de acesso.',
      );
    }
  }
}
