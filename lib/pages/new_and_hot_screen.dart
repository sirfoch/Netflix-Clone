import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

class NewAndHotScreen extends StatefulWidget {
  static String id = 'new_and_hot_screen';

  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  State<NewAndHotScreen> createState() => _NewAndHotScreenState();
}

class _NewAndHotScreenState extends State<NewAndHotScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: HeavyText(text: 'New and Hot', fontSize: 17,)),
    );
  }
}
