import 'package:appmovie/models/movie_detail_model.dart';
import 'package:appmovie/modules/movies/movie_detail/movie_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailHeader extends GetView<MovieDetailController> {
  final MovieDetailModel? movie;

  const MovieDetailHeader({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieData = movie;
    if (movieData != null) {
      return SizedBox(
        height: 278,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie!.urlImages.length,
          itemBuilder: (context, index) {
            final image = movieData.urlImages[index];
            return Padding(
              padding: EdgeInsets.all(2),
              child: Image.network(image),
            );
          },
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
