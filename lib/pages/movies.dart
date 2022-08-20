import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:netflix_clone/data/data.dart';
import 'package:netflix_clone/pages/download_screen.dart';
import 'package:netflix_clone/pages/home_screen.dart';
import 'package:netflix_clone/pages/movie_scroll_detail.dart';
import 'package:netflix_clone/pages/new_and_hot_screen.dart';
import 'package:netflix_clone/pages/search_screen.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

import '../widgets/iconwidget.dart';
import '../widgets/movies_scroll.dart';

class MoviesPage extends StatefulWidget {
  static String id = 'home_screen';
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {

  int selectedIndex = 0;

  void bottomNavPages(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List differentPages = [
    const HomeScreen(),
    const NewAndHotScreen(),
    const SearchScreen(),
    const DownloadScreen(),
  ];

  late List users = getUserData();

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: bottomNavPages,
        unselectedIconTheme: IconThemeData(size: 20,),
        selectedIconTheme: IconThemeData(size: 25),
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              label: 'New & Hot', icon: Icon(Icons.video_collection, color: Colors.white,)),
          BottomNavigationBarItem(
              label: 'Search', icon: Icon(Icons.search, color: Colors.white,)),BottomNavigationBarItem(
              label: 'Downloads', icon: Icon(Icons.arrow_circle_down, color: Colors.white,)),

        ],
      ),
      backgroundColor: Colors.black,
      body: differentPages[selectedIndex],
    );
  }
}
