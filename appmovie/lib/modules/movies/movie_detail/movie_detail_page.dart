import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'movie_detail_controller.dart';
import 'movie_detail_header.dart';

class MovieDetailPage extends GetView<MovieDetailController> {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Detail'),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () {
            return Column(
              children: [
                MovieDetailHeader(
                  movie: controller.movie.value,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
