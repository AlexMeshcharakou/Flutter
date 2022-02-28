import 'package:flutter/material.dart';

import 'my_text_widget.dart';

class MyListViewWidget extends StatelessWidget {
  const MyListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(bottom: 30),
      children: [
        for (int i = 0; i < 10; i++)
          const RotatedBox(
            quarterTurns: -1,
            child: MyTextWidget(text: 'ListView'),
          ),
      ],
    );
  }
}
