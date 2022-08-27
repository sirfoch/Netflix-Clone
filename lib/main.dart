import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/download_screen.dart';
import 'package:netflix_clone/pages/movies.dart';
import 'package:netflix_clone/pages/new_and_hot_screen.dart';
import 'package:netflix_clone/pages/search_screen.dart';
import 'package:netflix_clone/pages/userspage.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatefulWidget {
  const Netflix({Key? key}) : super(key: key);

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UsersPage(),
    );
  }
}
