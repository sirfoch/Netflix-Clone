import 'package:flutter/material.dart';

import '../../data/data.dart';

class TextFieldWidget extends StatefulWidget {
  final Function(String data) onchange;

  const TextFieldWidget({Key? key, required this.onchange,}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: TextField(
        showCursor: true,
        style: const TextStyle(color: Colors.white, fontSize: 13),
        textAlign: TextAlign.start,
        onChanged: (data)=>{
          widget.onchange(data)
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          filled: true,
          fillColor: Colors.white12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.white24, ),
          prefixIcon: const Icon(Icons.search, color: Colors.white24,),


        ),
      ),
    );;
  }
}
