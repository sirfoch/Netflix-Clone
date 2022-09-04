import 'package:flutter/material.dart';

import '../iconwidget.dart';

class ShuffleCastUserWidget extends StatelessWidget {
  const ShuffleCastUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
