import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import '../utils/movie_constants.dart';

class MovieProvider extends ChangeNotifier {
  List<MovieModel> _movies = MOVIES_CONSTANT;
  List<String> _categories = CATEGORIES;

  List<MovieModel> get movies => _movies;

  List<String> get categories => _categories;

  // sublist is equivalent to movies.slice
  List<MovieModel> get trending => _movies.sublist(0, 4);

  List<MovieModel> get latestMovies => _movies.sublist(_movies.length - 4);
}
