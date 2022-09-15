import 'package:flutter/material.dart';

class StoryBubbles extends StatelessWidget {

  final String userName;

  StoryBubbles({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle
            ),
          ),
        ),
        

        Text(userName)
      ],
    );
  }
}
