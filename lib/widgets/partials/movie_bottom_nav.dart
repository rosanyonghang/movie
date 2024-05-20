import 'package:flutter/material.dart';

class MovieBottomNav extends StatefulWidget {
  const MovieBottomNav({super.key});

  @override
  State<MovieBottomNav> createState() => _MovieBottomNavState();
}

class _MovieBottomNavState extends State<MovieBottomNav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (val){
        if(val == 0){
          Navigator.of(context).popAndPushNamed('/');
        }
        if(val == 1){
          Navigator.of(context).popAndPushNamed('/trending');
        }
        if(val == 2){
          Navigator.of(context).popAndPushNamed('/categories');
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Trending'),
        BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Categories'),
      ],
    );
  }
}
