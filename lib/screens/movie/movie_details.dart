import 'package:flutter/material.dart';
import 'package:movie/widgets/movies/trending_movies.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
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
                  child: Image.asset(
                    'assets/images/custom.png',
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
                                text: '84h',
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
                                text: '2022',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Text('description about the movie'),
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
