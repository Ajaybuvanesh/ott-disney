
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ott/video.dart';

import 'firstpage.dart';
import 'grid.dart';
import 'imagepic.dart';




class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _index = 0;

  final page = [
    const One(),
    const music(),
    const Pages(),
    const Edit(),
  ];
  void tap(index) {
    setState(() {
      _index = index;
    });
  }
  int select=0;
  void change(int index){
    setState(() {
      select=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090830),
      body: page[_index],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
            gap: 8,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.all(10),
            onTabChange: tap,
            backgroundColor: Colors.black,
            color: Colors.white,
            tabs: const [
              GButton(icon:Icons.home, text: 'Home'),
              GButton(icon:Icons.favorite_border,  text: 'Likes',),
              GButton(icon:Icons.bookmark_border,  text: 'Save',),
              GButton(icon:Icons.account_circle_outlined,  text: 'Profile',),

            ],),
        ),
      ),
    );
  }
}