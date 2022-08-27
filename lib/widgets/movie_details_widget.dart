import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/iconwidget.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/image/netflix.png',
                scale: 70,
              ),
              DescriptionText(
                text: 'SERIES',
                letterSpacing: 3,
                color: Colors.white,
                fontSize: 9,
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
          HeavyText(text: 'Locke & Key'),
          SizedBox(
            height: 2,
          ),
          Row(
            children: const [
              DescriptionText(
                text: '99% match',
                color: Colors.green,
                fontSize: 12,
              ),
              SizedBox(
                width: 5,
              ),
              DescriptionText(
                text: '2022',
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.eighteen_up_rating_rounded,
                color: Colors.white38,
              ),
              DescriptionText(
                text: '3 Seasons',
                color: Colors.white,
                fontSize: 12,
              ),
            ],
          ),
          HeavyText(text: '#6 in TV Shows Today', fontSize: 17,),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconWidget(icon: Icons.play_arrow, size: 25, padding: 1),
                DescriptionText(text: 'Resume', color: Colors.black, fontWeight: FontWeight.bold,)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            height: 30,
          ),
          SizedBox(height:10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconWidget(icon: Icons.download, size: 25, padding: 1, color: Colors.white,),
                DescriptionText(text: 'Download S2:E10', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(5)
            ),
            height: 30,
          )
        ],
      ),
    );
  }
}
