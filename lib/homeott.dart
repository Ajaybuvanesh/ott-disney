import 'package:flutter/material.dart';
import 'package:ott/login.dart';
import 'bottom.dart';
import 'log.dart';


class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF090830),
        body: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
                  },
                  child: const SizedBox(
                    height: 150,
                    width: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
              width: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen(

                  )));
                }, child: const Text("Login",style: TextStyle(fontSize: 40,color: Colors.white70),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
