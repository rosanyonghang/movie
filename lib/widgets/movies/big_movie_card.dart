import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';

class BigMovieCard extends StatelessWidget {
  MovieModel movie;
  BigMovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      width:300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
            fit: BoxFit.cover,
          image:  NetworkImage(movie.img)
        ),
      ),
      margin: EdgeInsets.only(right: 8),
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.all(8),
      ),
    );
  }
}
