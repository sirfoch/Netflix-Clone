import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

import '../iconwidget.dart';

class EpisodesList extends StatelessWidget {
  late String lockeImage =
      'https://flxt.tmsimg.com/assets/p17699282_b_v13_ab.jpg';

  EpisodesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, position) {
            return _episodeList(position, lockeImage);
          }),
    );
  }
}

Widget _episodeList(int index, String image) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Stack(
            children: [
              Container(
                height: 70,
                width: 110,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.red, width: 3)
                  ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(6), topLeft: Radius.circular(6)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://flxt.tmsimg.com/assets/p17699282_b_v13_ab.jpg'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.white, width: 1), bottom: BorderSide(color: Colors.white, width: 1), left: BorderSide(color: Colors.white, width: 1), right: BorderSide(color: Colors.white, width: 1),),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  margin: const EdgeInsets.only(left:35,right: 50, top: 20),
                  child: IconWidget(
                    icon: Icons.play_arrow,
                    size: 25,
                    padding: 6,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              DescriptionText(text: '1. The Premiere', color: Colors.white70,),
              DescriptionText(text: '53m', color: Colors.white38, fontSize: 11,),
            ],
          ),
        ],
      ),
      IconWidget(icon: Icons.file_download_outlined, size: 25, padding: 0, color: Colors.white70,)
    ],
  );
}
