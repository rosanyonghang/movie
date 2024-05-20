import 'package:flutter/cupertino.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/widgets/movies/big_movie_card.dart';
import 'package:provider/provider.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    final trending = Provider.of<MovieProvider>(context).trending;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trending',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: trending.map((el)=>BigMovieCard(el)
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
