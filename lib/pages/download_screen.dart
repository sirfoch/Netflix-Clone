import 'package:flutter/material.dart';
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
      padding: EdgeInsets.all(30),
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
        ],
      ),
    );
  }
}
