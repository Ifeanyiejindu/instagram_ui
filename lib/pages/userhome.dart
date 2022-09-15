import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/story_bubbles.dart';
import 'package:instagram_ui/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final _userNames = [
    'ifeanyie', 'joneshonew', 'brakemic', 'adeshehu', 'clarefits'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('INSTAGRAM', style: TextStyle(color: Colors.black),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //user stories
          Container(
            height: 130,
            child: ListView.builder(
                itemCount: _userNames.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
              return StoryBubbles(userName: _userNames[index]);
            }),
          ),

          //userposts
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return UserPosts(username: _userNames[index]);
          })),



        ],
      ),
    );
  }
}
