import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String username;

  UserPosts({required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //profile picture and name of the person making post
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                //profile picture
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 10,),

                    //username
                    Text(
                      username
                    ),
                  ],
                ),

                //more option
                Icon(Icons.more_vert_outlined)
              ],
            ),
          ),


          // image or video
          Container(
            height: 350,
            color: Colors.grey,
          ),

          //action icons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.chat_bubble_outline_rounded),
                    ),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            ),
          ),

          //likedby...
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text('Liked by '),
                Text('ifeanyiejindu ', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('and '),
                Text('others', style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          //caption
          Padding(
            padding: const EdgeInsets.only(left: 9.0, top: 8.0),
            child: RichText(text: TextSpan(
              style:TextStyle(color: Colors.black),
              children: [
                TextSpan(text: '#gotten #mitchkoko #flutter ', style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                TextSpan(text: 'this is me testing this caption again'),
              ]
            )),
          )
        ],
      ),
    );
  }
}
