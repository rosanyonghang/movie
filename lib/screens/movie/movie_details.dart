import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/widgets/movies/trending_movies.dart';
import 'package:provider/provider.dart';

import 'movie_suggestions.dart';
import 'package:http/http.dart' as http;

class MovieDetails extends StatefulWidget {
  int movieId;

  MovieDetails({required this.movieId});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  bool loading = true;
  List<MovieModel> movieSuggestions = [];
  @override
  void initState() {
    loadMovieSuggestions(widget.movieId.toString());
  }

  Future<void> loadMovieSuggestions(String id) async {
    final res = await http.get(Uri.parse(
        'https://yts.mx/api/v2/movie_suggestions.json?movie_id=' + id));
    print(jsonDecode(res.body)['data']['movies']);
    List<MovieModel> tempMovies = [];

    for(final movie in jsonDecode(res.body)['data']['movies']){
        tempMovies.add(MovieModel.fromJson(movie));
    }

    print(tempMovies);
    setState(() {
      movieSuggestions = tempMovies;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final movie = Provider.of<MovieProvider>(context, listen: false)
        .getMovieById(widget.movieId);

    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: loading? Center(
          child:  CircularProgressIndicator(),
        ): Container(
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
                      MovieSuggestions(movieList: movieSuggestions,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
