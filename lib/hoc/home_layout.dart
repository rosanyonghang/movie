import 'package:flutter/material.dart';
import 'package:movie/screens/movie/categories_list_screen.dart';
import 'package:movie/screens/movie/home_screen.dart';
import 'package:movie/screens/movie/trending_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0;

  List<String> titles = ['Home', 'Trending', 'Categories'];
  List<Widget> screens = [
    HomeScreen(),
    TrendingScreen(),
    CategoriesListScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_currentIndex])
      ),
      body:SingleChildScrollView(
        child: screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Categories'),
        ],
      ),
    );
  }
}
