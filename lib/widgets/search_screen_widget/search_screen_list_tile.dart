import 'package:flutter/material.dart';
import 'package:netflix_clone/data/data.dart';

class SearchList extends StatelessWidget {

  final List<Map> movies;
   SearchList({
    Key? key,
    required this.movies,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: 640,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return searchList(index, movies[index]['name']);
        },
      ),
    );
  }

  Widget searchList(int index, String data) {

    return ListTile(
      trailing: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border(
                top: BorderSide(color: Colors.white, width: 3),
                bottom: BorderSide(color: Colors.white, width: 3),
                right: BorderSide(color: Colors.white, width: 3),
                left: BorderSide(color: Colors.white, width: 3)),
          ),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          )),
      title: Text(
        data,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        movies[index]['year'],
        style: TextStyle(color: Colors.white),
      ),
      leading: Container(
        height: 60,
        width: 90,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              movies[index]['image'],
            ),
          ),
        ),
      ),
    );
  }
}
