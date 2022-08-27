import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/iconwidget.dart';

class HeavyText extends StatelessWidget {
  const HeavyText({Key? key, required this.text, this.fontSize}) : super(key: key);
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({Key? key, required this.text, this.textAlign})
      : super(key: key);
  final String text;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText(
      {Key? key,
      required this.text,
      this.letterSpacing,
      this.color,
      this.fontWeight,
      this.fontSize})
      : super(key: key);
  final String text;
  final double? letterSpacing;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
      ),
    );
  }
}






// class ExpandableTextWidget extends StatefulWidget {
//   final String text;
//
//   const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);
//
//   @override
//   State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
// }
//
// class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
//   late String firstHalf;
//   late String secondHalf;
//
//   bool hiddenText = true;
//
//   double textHeight = 110;
//
//   @override
//   void iniState() {
//     super.initState();
//     if (widget.text.length > textHeight) {
//       firstHalf = widget.text.substring(0, textHeight.toInt());
//       secondHalf =
//           widget.text.substring(textHeight.toInt() + 1, widget.text.length);
//     } else {
//       firstHalf = widget.text;
//       secondHalf = '';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: secondHalf == ''
//           ? SmallText(text: firstHalf)
//           : Column(
//               children: [
//                 SmallText(
//                     text: hiddenText
//                         ? (firstHalf + '...')
//                         : (firstHalf + secondHalf)),
//                 InkWell(
//                   onTap: null,
//                   child: Row(
//                     children: [
//                       DescriptionText(
//                         text: 'Show more',
//                         color: Colors.white,
//                       ),
//                       IconWidget(
//                           icon: Icons.keyboard_arrow_down_rounded,
//                           size: 14,
//                           padding: 0),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//     );
//   }
// }
