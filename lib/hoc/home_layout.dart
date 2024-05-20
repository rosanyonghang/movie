import 'package:flutter/material.dart';
import 'package:movie/screens/movie/categories_movie_screen.dart';
import 'package:movie/screens/movie/home_movie_screen.dart';
import 'package:movie/screens/movie/trending_movie_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Trending', 'Categories'];
  List<Widget> screens = [
    HomeMovieScreen(),
    TrendingMovieScreen(),
    CategoriesMovieScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_selectedIndex]),
      ),
      body: SingleChildScrollView(
        child: screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val){
           setState(() {
             _selectedIndex = val;
           });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Categories'),
        ],
      ),
    );
  }
}
