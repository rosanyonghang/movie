import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import '../utils/movie_constants.dart';

class MovieProvider extends ChangeNotifier{
    List<MovieModel> _movies = MOVIES_CONSTANT;

    List<MovieModel> get movies => _movies;
}