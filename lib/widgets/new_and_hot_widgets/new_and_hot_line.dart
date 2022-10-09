import 'package:flutter/material.dart';

import 'new_and_hot_options.dart';

class NewAndHotOptionsWidget extends StatefulWidget {
  const NewAndHotOptionsWidget({Key? key}) : super(key: key);

  @override
  State<NewAndHotOptionsWidget> createState() => _NewAndHotOptionsWidgetState();
}

class _NewAndHotOptionsWidgetState extends State<NewAndHotOptionsWidget> {

  final BoxDecoration _decorationProp = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(11),
  );

 String currentClick = 'comingSoon';

  toggleTap (current){

    setState(() {
      currentClick = current;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    toggleTap('comingSoon');
                  });
                },
                child: NHOptions(
                  decoration: currentClick=='comingSoon'?_decorationProp:null,
                  color: currentClick=='comingSoon'?Colors.black:Colors.white,
                  text: '🍿 Coming soon',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    toggleTap('everyone');
                  });
                },
                child: NHOptions(
                  decoration: currentClick=='everyone'?_decorationProp:null,
                  color: currentClick=='everyone'?Colors.black:Colors.white,
                  text: '🔥 Everyone\'s Watching',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    toggleTap('topTen');
                  });
                },
                child: NHOptions(
                  decoration: currentClick=='topTen'?_decorationProp:null,
                  color: currentClick=='topTen'?Colors.black:Colors.white,
                  text: '💯 Top Ten',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
