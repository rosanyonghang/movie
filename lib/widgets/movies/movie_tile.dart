import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';

import '../../screens/movie/movie_details.dart';

class MovieTile extends StatelessWidget {
  MovieModel movie;
  MovieTile({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieId: movie.id,)));
      },
      title: Text(movie.title, ),
      // subtitle: Text(movie.year.toString(), style: TextStyle(
      subtitle: Text(
        movie.year.toString(),
        style: TextStyle(),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          movie.img,
          height: 80,
          width: 80,
          fit: BoxFit.cover,
        ),
      ),
      trailing: Text(
        movie.rating.toString(),
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
