import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'bottom.dart';


class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  List<String> a = [
    "assets/amar.jpg",
    "assets/neeya.png",
    "assets/singer.png",
    "assets/siren.png",
    "assets/super.png",
  ];
  List<String> b = [
    "assets/Baakiya.png",
    "assets/roja.png",
    "assets/tamil.png",
    "assets/pandian.png",
  ];
  List<String> c = [
    "assets/cook.png",
    "assets/RRR.png",
    "assets/shai.png",
    "assets/koffee.png",
    "assets/bheeshma.png",
  ];
  List<String> d = [
    "assets/dhoni.png",
    "assets/kab.png",
    "assets/volley.png",
    "assets/sachin.png",
    "assets/CR7.png",
  ];
  List<String> e = [
    "assets/fail.png",
    "assets/show.png",
    "assets/math.png",
    "assets/beat.png",
    "assets/kamal.png",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF090830),
        appBar: AppBar(
          backgroundColor: const Color(0xFF090830),
          leading: Image.asset(
            "assets/logo.png", // Corrected path to the logo.png file
            width: 40, // Adjust size as needed
            height: 40, // Adjust size as needed
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 135),
            child: Text(
              "Subscribe",
              style: TextStyle(fontSize: 20, color: Colors.yellow),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.cast, color: Colors.white70),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int index, int) {
                      return Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(a[index]), fit: BoxFit.cover),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 8 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    left: 150,
                    bottom: 10,
                    child: DotsIndicator(
                      dotsCount: a.length,
                      position: currentIndex.toInt(),
                      onTap: (index) {},
                      decorator: const DotsDecorator(
                        color: Colors.white70,
                        activeColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text("2024.Movie.Comedy.Family.Action.Love", style: TextStyle(fontSize: 15, color: Colors.white70)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 140),
                      child: Icon(Icons.play_arrow, size: 20, color: Colors.white70),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
                        },
                        child: const Text("Watch free", style: TextStyle(fontSize: 20, color: Colors.white70))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Continue Watching for Ajaybuvanesh", style: TextStyle(fontSize: 20, color: Colors.white70)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: IconButton(
                          icon: const Icon(Icons.arrow_forward,size: 20,color: Colors.white70,),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: b.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 125, // Adjusted width
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(b[index]), fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Watchlist", style: TextStyle(fontSize: 20, color: Colors.white70)),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: c.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 180, // Adjusted width
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(c[index]), fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(" Sports", style: TextStyle(fontSize: 20, color: Colors.white70)),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("HotStar Special Series", style: TextStyle(fontSize: 20, color: Colors.white70)),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: e.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 105, // Adjusted width
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(e[index]), fit: BoxFit.cover),
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
    );
  }
}
