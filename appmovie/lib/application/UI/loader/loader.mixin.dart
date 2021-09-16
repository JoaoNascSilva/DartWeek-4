import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loaderRx) {
    ever<bool>(loaderRx, (loading) async {
      if (loading) {
        await Get.dialog(
          const Center(child: CircularProgressIndicator()),
          // Trava a tela para o loader
          barrierDismissible: false,
        );
      } else {
        Get.back();
      }
    });
  }
}
