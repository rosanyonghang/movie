import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import '../utils/movie_constants.dart';
import 'package:http/http.dart' as http;

class MovieProvider extends ChangeNotifier {
  List<MovieModel> _movies = MOVIES_CONSTANT;
  List<String> _categories = CATEGORIES;

  List<MovieModel> get movies => _movies;

  List<String> get categories => _categories;

  // sublist is equivalent to movies.slice
  List<MovieModel> get trending => _movies.sublist(0, 4);

  List<MovieModel> get latestMovies => _movies.sublist(_movies.length - 4);

  List<MovieModel> getMoviesByCategory(String category){
    return _movies.where((el)=> el.genres.contains(category)).toList();
  }

  Future<void> loadMovies() async{
    final res = await http.get(Uri.parse('https://yts.mx/api/v2/list_movies.json'));
    if(res.statusCode == 200){
      final data =jsonDecode(res.body)['data'];
      final movies =data['movies'];
      List<MovieModel> tempMovies = [];
      for(final movie in movies){
        print(movie['genres']);
        tempMovies.add(MovieModel.fromJson(movie));
      }
      _movies = tempMovies;
      notifyListeners();
    }else{
      throw Exception('failed to load album');
    }
  }
}
