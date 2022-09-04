import 'package:flutter/material.dart';
import 'package:netflix_clone/data/data.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

import '../widgets/search_screen_widget/search_screen_list_tile.dart';
import '../widgets/search_screen_widget/text_field_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  String searchQuery = "";

  onChange(String data){
    setState(() {
      searchQuery= data;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 45),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldWidget(onchange: onChange),
          const SizedBox(
            height: 10,
          ),
          DescriptionText(
            text: 'Top Searches',
            fontSize: 16,
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.bold,
          ),
          SearchList(
            movies: getWatchItAgainData(searchQuery),
          )
        ],
      ),
    );
  }
}





