import 'package:appmovie/modules/login/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/login.png',
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black45,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 80,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 80,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: Get.width * .9,
                height: 42,
                child: SignInButton(
                  Buttons.Google,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  elevation: 8,
                  text: 'Entrar com Google',
                  onPressed: () {
                    controller.login();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
