import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

import 'bottom.dart';

class music extends StatefulWidget {
  const music({super.key});

  @override
  _musicState createState() => _musicState();


}

class _musicState extends State<music> {
  List d =[
    "assets/fail.png",
    "assets/show.png",
    "assets/math.png",
    "assets/beat.png",
    "assets/kamal.png",
  ];
  List g=[
    "assets/dhoni.png",
    "assets/kab.png",
    "assets/volley.png",
    "assets/sachin.png",
    "assets/CR7.png",
  ];
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
        ));
  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF090830),
          appBar: AppBar(
            backgroundColor: const Color(0xFF090830),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back,size: 20,color: Colors.white70,), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
            },),
          ),

          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  FlickVideoPlayer(
                      flickManager: flickManager
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("2024 : 2h 56min : 5 Languages : U/A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white70),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: const Size(400, 50),
                    ), child: const Text("Watch Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white70),),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Drama . Thriller . Action . Romance . Suspense . Series . Sports",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 19),),
                  ),

                  SizedBox(
                    height: 200,
                    width: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: d.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                width: 105, // Adjusted width
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(d[index]), fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:g.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                width: 105, // Adjusted width
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(g[index]), fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                ],

              ),
            ),
          ),

        ),
      );
  }
}