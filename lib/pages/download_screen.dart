import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

import '../widgets/iconwidget.dart';

class DownloadScreen extends StatefulWidget {

  static String id = 'download_screen';

  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                HeavyText(text: 'Downloads')
                ],
              ),
              Row(
                children: [
                  IconWidget(
                    padding: 10,
                    icon: Icons.shuffle,
                    size: 20,
                    color: Colors.white,
                  ),
                  IconWidget(
                    padding: 10,
                    icon: Icons.cast_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png',
                            scale: 15)),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              IconWidget(icon: IconlyLight.setting, size: 25, padding: 0, color: Colors.white,),
              SizedBox(width: 10,),
              SmallText(text: 'Smart Downloads'),
            ],
          ),
          SizedBox(height: 30,),
          HeavyText(text: 'Introducing Downloads for you'),
          const SizedBox(height: 10,),
          Container(padding: EdgeInsets.only(left: 50, right: 50, top: 5),child: SmallText(text: 'We\'ll download a personalized selection of movies and shows for you, so there\'s always something to watch on your device.', textAlign: TextAlign.center,)),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DescriptionText(text: 'Set Up', color: Colors.white, fontWeight: FontWeight.bold,)
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(5)
            ),
            height: 30,
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(10),
            child: DescriptionText(text: 'See What You Can Download', color: Colors.black, fontWeight: FontWeight.bold,),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
            ),
            height: 35,
          ),
        ],
      ),
    );
  }
}
