import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:netflix_clone/widgets/moviescrollpage_widgets/episodes_trailers_more.dart';
import 'package:netflix_clone/widgets/moviescrollpage_widgets/scroll_page_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/widgets/textWidget.dart';
import '../widgets/moviescrollpage_widgets/episodes_list.dart';
import '../widgets/expandable_text_widget.dart';
import '../widgets/moviescrollpage_widgets/movie_preview.dart';
import '../widgets/iconwidget.dart';

class MovieScrollDetail extends StatefulWidget {
  const MovieScrollDetail({Key? key}) : super(key: key);

  @override
  State<MovieScrollDetail> createState() => _MovieScrollDetailState();
}

class _MovieScrollDetailState extends State<MovieScrollDetail> {
  String currentTab = 'episode';

 setCurrentTab(String current){
    setState(() {
      currentTab = current;
    });
    print(currentTab);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MoviePreview(),
                const MovieDetailsWidget(),
                const SizedBox(
                  height: 5,
                ),
                const ExpandableTextWidget(
                  text:
                      'Escalating threats and a devastating loss lead the Lockes into a ferocious showdown with Dodge. Back at Keyhouse, Bode confronts a shocking visitor',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'Cast: Darby, Jenny, Fortune, Kelly, Sammie, Kene ...',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'more',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const ListRateShareWidget(),
                const SizedBox(
                  height: 10,
                ),
                EpisodesTrailersMore(setCurrentTab:setCurrentTab,),
                Row(
                  children: const [
                    DescriptionText(
                      text: 'Season 2',
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white70,
                      size: 14,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
           currentTab =='episode'? EpisodesList(): Text('')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
