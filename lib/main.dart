import 'package:flutter/material.dart';
import 'package:movie/hoc/home_layout.dart';
import 'package:movie/providers/count_provider.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/screens/movie/categories_movie_screen.dart';
import 'package:movie/screens/movie/home_movie_screen.dart';
import 'package:provider/provider.dart';

import 'screens/count_screen.dart';
import 'screens/movie/trending_movie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we can use one provider at a time but since, there are always different modules
    // we tend to use MultiProvider widget
    return MultiProvider(
      providers: [
        // providers should be categorized well to keep track and separate
        // all the modules and their respective variables
        ChangeNotifierProvider(create: (context)=> CountProvider()),
        ChangeNotifierProvider(create: (context)=> MovieProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        // home: HomeMovieScreen(),
        initialRoute: '/',
        routes: {
          '/': (context)=> HomeLayout(),
          // '/trending': (context)=> TrendingMovieScreen(),
          // '/categories': (context)=> CategoriesMovieScreen(),
        }
      ),
    );
  }
}

