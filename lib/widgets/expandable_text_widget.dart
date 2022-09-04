import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool isHiddenText = true;

  double textHeight = 120;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt(), widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      child: secondHalf == ''
          ? DescriptionText(text: widget.text, fontSize: 30,)
          : Column(
        children: [
          isHiddenText
              ? DescriptionText(
            color: Colors.white,
            text: firstHalf + "...",
            fontSize: 12,
          )
              : DescriptionText(
            color: Colors.white,
            text: widget.text,
            fontSize: 12,
          ),
          const SizedBox(height: 5),
          InkWell(
            onTap: () {
              setState(() {
                isHiddenText = !isHiddenText;
              });
            },
            child: Row(
                children: isHiddenText
                    ? [
                  const DescriptionText(
                    text: "Show more",
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  const Icon(Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 16),
                ]
                    : [
                  const DescriptionText(
                    text: "Show less",
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight:FontWeight.bold,
                  ),
                  const Icon(Icons.arrow_drop_up,
                      color: Colors.white,
                      size: 16),
                ]),
          ),
        ],
      ),
    );
  }
}