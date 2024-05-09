import 'package:flutter/material.dart';

import 'package:insta_redesign/views/feed_views.dart';
import 'package:insta_redesign/views/tab_views.dart';
import 'package:insta_redesign/views/tagged_views.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //Tab List
  final List<Tab> tabs = [
    Tab(
      icon: Icon(
        Icons.image,
      ),
    ),
    Tab(
      icon: Icon(Icons.video_collection),
    ),
    Tab(
      icon: Icon(Icons.bookmark),
    ),
  ];

  final List<Widget> tabBarViews = [
    FeedView(),
    ReelsView(),
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '364',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('Following')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('lib/images/image13.jpg')),
                          shape: BoxShape.circle,
                          color: Colors.grey[300]),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '21.1K',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('Follower')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'hamadkhan20',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(' | '),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'UI Designer * Programmer * YouTube',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Youtube.com/xxyyzz/',
                style: TextStyle(
                    color: Colors.blue[600], fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              //padding
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Text(
                        'Edit Profile',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TabBar(
                tabs: tabs,
              ),
              SizedBox(height: 2000, child: TabBarView(children: tabBarViews))
            ],
          ),
        ));
  }
}
