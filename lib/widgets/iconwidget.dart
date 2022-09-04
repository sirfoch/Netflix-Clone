import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class InfoAndListWidget2 extends StatelessWidget {
  const InfoAndListWidget2({
    Key? key,
    required this.icon,
    required this.text,
    this.color,
    required this.fontSize,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color? color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        DescriptionText(
          text: text,
          fontSize: fontSize,
          color: color,
        ),
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
        children: const [
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

class ListRateShareWidget extends StatelessWidget {
  const ListRateShareWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: InfoAndListWidget2(
              icon: Icons.done,
              text: 'My List',
              color: Colors.white38,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: const InfoAndListWidget2(
            icon: FontAwesomeIcons.thumbsUp,
            text: 'Rate',
            color: Colors.white38,
            fontSize: 12,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: const InfoAndListWidget2(
            icon: FontAwesomeIcons.paperPlane,
            text: 'Share',
            color: Colors.white38,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}


