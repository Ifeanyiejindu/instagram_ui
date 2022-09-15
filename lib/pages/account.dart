import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/account_tab1.dart';
import 'package:instagram_ui/utils/account_tab2.dart';
import 'package:instagram_ui/utils/account_tab3.dart';
import 'package:instagram_ui/utils/account_tab4.dart';
import 'package:instagram_ui/utils/profilestory_bubbles.dart';
import 'package:instagram_ui/utils/story_bubbles.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //profile picture
                  Container(height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                    shape: BoxShape.circle
                  ),),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // profile details
                        Column(
                          children: [
                            Text('95', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            Text('Posts')
                          ],
                        ),
                        // Followers
                        Column(
                          children: [
                            Text('687', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            Text('Followers')
                          ],
                        ),

                        //Followings
                        Column(
                          children: [
                            Text('706', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            Text('Following'),
                      ],
                    )
                      ],
                    ),
                  ),



                ],
              ),
            ),

            //user details
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ifeanyi Ejindu', style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text('Business Developer and Programmer'),
                  ),
                  Text('ifeanyiejindu.com'),
                ],
              ),
            ),

            // buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: [
                  Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)
                      ),
                    child: Center(
                      child: Text(
                        'Edit Profile'
                      ),
                    ),
                    ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(
                            child: Text(
                                'Ad Tools'
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text(
                                  'Insights'
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(
                            child: Text(
                                'Email'
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),

            //stories
           Row(
             children: [
               ProfileStoryBubbles(),
               ProfileStoryBubbles(),
               ProfileStoryBubbles(),
               ProfileStoryBubbles(),
               ProfileStoryBubbles(),
             ],
           ),
            SizedBox(
              height: 20,
            ),

            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ]),

            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4()
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
