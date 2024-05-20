import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:provider/provider.dart';

class HomeMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;
    // List<int> movieList = [1,2,3,4,5,6];
    return Container(
      height:MediaQuery.of(context).size.height,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(movieList[index].title),
              // subtitle: Text(movieList[index].year.toString(), style: TextStyle(
              subtitle: Text(movieList[index].img.toString(), style: TextStyle(

              ),),
              leading: Image.network("https://cdn.pixabay.com/photo/2021/11/03/08/24/baskets-6765014_1280.jpg"),
              trailing: Text(movieList[index].rating.toString(), style: TextStyle(
                fontSize: 36
              ),),
            );
          }),
    );
  }
}
