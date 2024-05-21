import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';

import '../../screens/movie/movie_details.dart';

class BigMovieCard extends StatelessWidget {
  MovieModel movie;
  BigMovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieId:movie.id)));
      },
      child: Container(
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
          width: double.infinity,
          color:Colors.black,
          padding: EdgeInsets.all(8),
          child: Text(movie.title, style: TextStyle(
            color: Colors.white
          ),),

        ),
      ),
    );
  }
}
