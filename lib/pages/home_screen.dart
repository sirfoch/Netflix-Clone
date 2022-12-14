import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/home_page_widget/shuffle_cast_user.dart';
import '../widgets/iconwidget.dart';
import '../widgets/home_page_widget//movies_scroll.dart';
import '../widgets/textWidget.dart';
import 'movie_scroll_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 550,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://flxt.tmsimg.com/assets/p17699282_b_v13_ab.jpg'),
                    )),
              ),
              Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 45, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/image/netflix.png',
                          scale: 40,
                        ),
                      ),
                      const ShuffleCastUserWidget()
                    ],
                  ),
                ),
              ),
              Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 95, left: 45, right: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SmallText(
                        text: 'TV Shows',
                      ),
                      const SmallText(
                        text: 'Movies',
                      ),
                      Row(
                        children: [
                          const SmallText(
                            text: 'Categories',
                          ),
                          IconWidget(
                            icon: Icons.arrow_drop_down,
                            size: 20,
                            padding: 0,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                child: Container(
                  margin: const EdgeInsets.only(left: 45, right: 45, top: 490),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      InfoAndListWidget(
                        icon: Icons.done,
                        text: 'My List',
                      ),
                      PlayContainer(),
                      InfoAndListWidget(
                        icon: Icons.info_outline,
                        text: 'Info',
                      ),
                    ],
                  ),
                ),
              )
            ]),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieScrollDetail()));
              },
              child: MovieScroll(
                  title: 'TV Shows', movies: getWatchItAgainData()),
            ),
            MovieScroll(title: 'Trending Now', movies: getWatchItAgainData()),
            MovieScroll(title: 'My List', movies: getWatchItAgainData()),
            MovieScroll(
                title: 'Documentaries', movies: getWatchItAgainData()),
            MovieScroll(
                title: 'Only on Netflix', movies: getWatchItAgainData()),
            MovieScroll(title: 'New Releases', movies: getWatchItAgainData()),
          ],
        ),
      ),
    );
  }
}

