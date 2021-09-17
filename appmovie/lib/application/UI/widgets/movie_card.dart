import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:appmovie/application/UI/app_movies_icons_icons.dart';
import 'package:appmovie/application/UI/theme_extension.dart';

class MovieCard extends StatelessWidget {
  final String urlMovie;
  final String title;
  final int year;

  const MovieCard({
    Key? key,
    required this.urlMovie,
    required this.title,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 148,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      this.urlMovie,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  year.toString(),
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -3,
            bottom: 48,
            child: Material(
              elevation: 2,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 30,
                child: IconButton(
                  onPressed: () {},
                  iconSize: 16,
                  icon: Icon(
                    AppMoviesIcons.heart_empty,
                    color: context.themeGrey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
