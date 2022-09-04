import 'package:flutter/material.dart';

import 'new_and_hot_options.dart';

class NewAndHotOptionsWidget extends StatefulWidget {
  const NewAndHotOptionsWidget({Key? key}) : super(key: key);

  @override
  State<NewAndHotOptionsWidget> createState() => _NewAndHotOptionsWidgetState();
}

class _NewAndHotOptionsWidgetState extends State<NewAndHotOptionsWidget> {


  // toggleTap (current){
  //
  //   setState(() {
  //     currentClick = current;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              NHOptions(
                text: '🍿 Coming soon',
              ),
              SizedBox(
                width: 10,
              ),
              NHOptions(
                text: '🔥 Everyone\'s Watching',
              ),
              SizedBox(
                width: 10,
              ),
              NHOptions(
                text: '💯 Top Ten',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
