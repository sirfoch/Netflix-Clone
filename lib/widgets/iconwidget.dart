import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

class IconWidget extends StatelessWidget {
  IconWidget(
      {Key? key,
      required this.icon,
      required this.size,
      this.color,
      required this.padding})
      : super(key: key);
  final IconData icon;
  final double size;
  final Color? color;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Icon(
        icon,
        size: size,
        color: color,
      ),
    );
  }
}

class InfoAndListWidget extends StatelessWidget {
  const InfoAndListWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SmallText(text: text),
      ],
    );
  }
}

class PlayContainer extends StatelessWidget {
  const PlayContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 25,
      width: 70,
      child: Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            'Play',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    );
  }
}
