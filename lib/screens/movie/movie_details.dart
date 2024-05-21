import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/widgets/movies/trending_movies.dart';
import 'package:provider/provider.dart';

class MovieDetails extends StatelessWidget {
  int movieId;
  MovieDetails({required this.movieId});

  @override
  Widget build(BuildContext context) {
    final movie = Provider.of<MovieProvider>(context, listen: false).getMovieById(movieId);

    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.network(
                    movie.img,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        TextSpan(
                          children: <InlineSpan>[
                            TextSpan(text: 'Length: '),
                            TextSpan(
                                text: movie.runtime.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Text.rich(
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        TextSpan(
                          children: <InlineSpan>[
                            TextSpan(text: 'Year: '),
                            TextSpan(
                                text: movie.year.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Text(movie.description),
                      ),
                      TrendingMovies()
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
