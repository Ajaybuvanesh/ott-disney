import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import 'bottom.dart';


class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List m=[
    "assets/fail.png",
    "assets/neeya.png",
    "assets/cat.png",
    "assets/siren.png",
    "assets/kamal.png",
    "assets/cook.png",
    "assets/kab.png",
    "assets/koffee.png",
    "assets/sachin.png",
    "assets/RRR.png",
    "assets/volley.png",
    "assets/tamil.png",
    "assets/show.png",
    "assets/shai.png",
    "assets/math.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090830),
      appBar: AppBar(
        backgroundColor: const Color(0xFF090830),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,size: 20,color: Colors.white70,), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
        },),
        title: const Text("Search",style: TextStyle(fontSize: 20,color: Colors.white70),),
      ),
      body:
      SingleChildScrollView(
        child: SizedBox(
          height: 1500,
          width: 2000,
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4, // Number of columns
            itemCount:  m .length, // Total number of items
            itemBuilder: (BuildContext context, int index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(m[index]),
                    fit: BoxFit.cover,
                  )),
            ),
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, index.isEven ? 3 : 1), // Tile size
            mainAxisSpacing: 4.0, // Vertical spacing
            crossAxisSpacing: 4.0, // Horizontal spacing
          ),
        ),
      ),
    );
  }
}