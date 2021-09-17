import 'package:appmovie/application/UI/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MoviesHeader extends StatelessWidget {
  const MoviesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset(
              'assets/images/header.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            width: Get.width * .90,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: Colors.white,
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: 'Procurar Filmes',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: context.themeGrey,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: context.themeGrey,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
