import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/home_page_widget/shuffle_cast_user.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

import '../widgets/new_and_hot_widgets/new_and_hot_line.dart';

class NewAndHotScreen extends StatefulWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  State<NewAndHotScreen> createState() => _NewAndHotScreenState();
}

class _NewAndHotScreenState extends State<NewAndHotScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DescriptionText(
                  text: 'New & Hot',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                ShuffleCastUserWidget(),
              ],
            ),
          ),
          const NewAndHotOptionsWidget(),
        ],
      ),
    );
  }
}


