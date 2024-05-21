import 'package:flutter/material.dart';
import 'package:movie/hoc/home_layout.dart';

import 'screens/count_screen.dart';

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
    return  MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
          fontFamily: 'Poppins'
        ),
        // home: HomeMovieScreen(),
        initialRoute: '/',
        routes: {
         '/': (context)=> HomeLayout(),
         // '/category': (context)=> CategoriesListScreen(),
         // '/trending': (context)=> TrendingScreen(),
        }
    );
  }
}

// stacked, main
