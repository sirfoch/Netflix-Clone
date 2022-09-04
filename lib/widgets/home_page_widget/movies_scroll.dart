import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';


class MovieScroll extends StatelessWidget {
  final String title;
  final List<Map> movies;
  const MovieScroll({Key? key, required this.title, required this.movies,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 3, right: 3, bottom: 5),
        child: HeavyText(text: title, fontSize: 17,),
      ),
      SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: movies.length,
            itemBuilder: (context, position) {
              return _movieBox(position, movies[position]["image"]);
            }),
      ),
    ]);
  }
}

Widget _movieBox(int index, String image) {
  return Container(
    margin: EdgeInsets.all(3),
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: NetworkImage(image))));
}

