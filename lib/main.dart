import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ott/bottom.dart';

import 'homeott.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey:  "AIzaSyD64UF04rAg88blIJAcUTLQ9clFZs_Y6fo",
        appId: '1:100466476118:android:e617267147a6dbdee027f7',
        messagingSenderId:"100466476118" ,
        projectId:'sauth-f34e0' )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        AnimatedSplashScreen(
          duration: 2500,
          splash: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Column(
                children: [
                  Image(
                    image: AssetImage("assets/emb.png"),
                    width: 200,
                  ),
                  SizedBox(
                    height: 100,
                  ),

                ],
              )), splashIconSize: 500,
          nextScreen: const Circle(),
          // splashTransition: SplashTransition.scaleTransition,
          backgroundColor: const Color(0xFF0f143c),
        )
    );
  }
}
