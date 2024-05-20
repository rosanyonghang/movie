import 'package:flutter/material.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/screens/movie/categories_movie_screen.dart';
import 'package:provider/provider.dart';

import '../../screens/movie/movies_by_category_screen.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<MovieProvider>(context).categories;
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Wrap(
            children: categories
                .map((cat) => GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MoviesByCategoryScreen(category: cat,)));
              },
                  child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        margin: EdgeInsets.only(right: 4, bottom: 4),
                        child: Text(cat),
                      ),
                ))
                .toList(),
          )
        ],
      ),
    );
  }
}
