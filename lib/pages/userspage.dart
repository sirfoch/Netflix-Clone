import 'package:flutter/material.dart';
import 'package:netflix_clone/data/data.dart';
import 'package:netflix_clone/widgets/textWidget.dart';
import 'package:netflix_clone/widgets/users_list.dart';


import 'movies.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(top: 45, left: 20, right: 30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SmallText(text: 'Who\'s Watching'),
                HeavyText(text: 'Edit'),
              ],
            ),
            SizedBox(height: 20,),
            GestureDetector(onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MoviesPage()));
            },child: UsersList(user:getUserData(),)),
          ],
        ),
      ),
    );
  }
}
