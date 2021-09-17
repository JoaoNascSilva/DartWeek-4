import 'package:appmovie/application/UI/widgets/movie_card.dart';
import 'package:flutter/material.dart';

class MoviesGroup extends StatelessWidget {
  final String title;
  final List<String> _urls = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/6T0r3jBs0xbmzVnM9u7e3vUXMYk.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/kU0NbsUVoUMcYxoISmBCxFmgWYC.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/wllzjZxg4ynlAm5xmOICJ2uHOPJ.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/qZK4LSj7crL6RNGUfD1LSJioA4u.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/tX0o4AdHpidgniTWwfzK0dNTKrc.jpg'
  ];

  MoviesGroup({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var url = this._urls[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MovieCard(
                    urlMovie: url,
                    title: 'Viúva Negra',
                    year: 2019,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
