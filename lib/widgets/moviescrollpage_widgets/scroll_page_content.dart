import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/iconwidget.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/netflix.png',
                scale: 70,

              ),
              const DescriptionText(
                text: 'SERIES',
                letterSpacing: 3,
                color: Colors.white,
                fontSize: 9,
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          const HeavyText(text: 'Locke & Key'),
          const SizedBox(
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
          const HeavyText(text: '#6 in TV Shows Today', fontSize: 17,),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconWidget(icon: Icons.play_arrow, size: 25, padding: 1),
                const DescriptionText(text: 'Resume', color: Colors.black, fontWeight: FontWeight.bold,)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            height: 30,
          ),
          const SizedBox(height:10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconWidget(icon: Icons.download, size: 25, padding: 1, color: Colors.white,),
                const DescriptionText(text: 'Download S2:E10', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(5)
            ),
            height: 30,
          ),
          SizedBox(height: 10,),
          const HeavyText(text: 'S2:E10 Cliffhanger'),
        ],
      ),
    );
  }
}
