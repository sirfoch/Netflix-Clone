import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

class EpisodesTrailersMore extends StatefulWidget {

  const EpisodesTrailersMore({Key? key, required this.setCurrentTab})
      : super(key: key);

  final Function(String currentTab) setCurrentTab;

  @override
  State<EpisodesTrailersMore> createState() => _EpisodesTrailersMoreState();
}

class _EpisodesTrailersMoreState extends State<EpisodesTrailersMore> {
  BoxDecoration decorationProp = const BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Colors.red,
        width: 3.0,
      ),
    ),
  );

  String tab = "episode";

  setToggleTab(String current){
    setState(() {
      tab = current;
    });
    widget.setCurrentTab(current);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      setToggleTab('episode');
                    });
                  },
                  child: EMTWidget(
                    text: 'Episodes',
                    decoration: tab == 'episode'? decorationProp : null,
                    textColor: tab == 'episode'? Colors.white : Colors.white70,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      setToggleTab('more');
                    });
                  },
                  child: EMTWidget(
                    text: 'More Like This',
                    decoration: tab == 'more'? decorationProp : null,
                    textColor: tab == 'more'? Colors.white : Colors.white70,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      setToggleTab('trailer');
                    });
                  },
                  child: EMTWidget(
                    text: 'Trailer & More',
                    decoration: tab == 'trailer' ? decorationProp : null,
                    textColor: tab == 'trailer' ? Colors.white : Colors.white70,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EMTWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final BoxDecoration? decoration;

  const EMTWidget({
    Key? key,
    required this.text,
    this.decoration,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: decoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: DescriptionText(
            text: text,
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
