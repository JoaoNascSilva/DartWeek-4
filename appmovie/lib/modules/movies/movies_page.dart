import 'package:appmovie/application/UI/theme_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'movies_controller.dart';

class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              'assets/images/header.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 120,
            left: Get.width * .05,
            child: Container(
              alignment: Alignment.center,
              width: Get.width * .9,
              child: TextField(
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search, color: context.themeGrey),
                  hintText: 'Procurar Filme',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(
                    color: context.themeGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: context.themeGrey,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: context.themeGrey,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Positioned(
          //   top: 200,
          //   left: 20,
          //   child: TextField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.search),
          //       hintText: 'Pesquisar Filmes',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
