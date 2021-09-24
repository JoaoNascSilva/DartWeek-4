import 'package:appmovie/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:appmovie/application/UI/theme_extension.dart';

import 'movie_cast.dart';

class MovieDetailContentMainCast extends StatelessWidget {
  final MovieDetailModel? movie;
  final showPanel = false.obs;

  MovieDetailContentMainCast({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: context.themeGrey,
        ),
        ExpansionPanelList(
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: Colors.white,
              isExpanded: true,
              headerBuilder: (context, isExpanded) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Elenco ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
              body: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: movie?.cast
                          .map(
                            (c) => MovieCast(
                              cast: c,
                            ),
                          )
                          .toList() ??
                      [],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
