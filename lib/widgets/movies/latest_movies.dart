import 'package:flutter/material.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/widgets/movies/movie_tile.dart';
import 'package:provider/provider.dart';

import '../../models/movie_model.dart';

class LatestMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).latestMovies;

    return Container(
      margin: EdgeInsets.only(top:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Latest Movies', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: movieList.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieTile(movie: movieList[index]);
              }),
        ],
      ),
    );
  }
}
