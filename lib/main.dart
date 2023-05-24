import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/splash_page.dart';
import 'package:flutter_app/welcome_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage>{
  var cWidth = 200.0;
  var cHeight = 200.0;
  var opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 2),
              child: AnimatedContainer(
                  width: cWidth,
                  height: cHeight,
                  color: Colors.orange,
                duration: Duration(seconds: 2),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                //generate random width and height
                Random random = new Random();
                cWidth = random.nextInt(100).toDouble() + 100;
                cHeight = random.nextInt(100).toDouble() + 100;
              });
            }, child: Text('Click Me')),
            ElevatedButton(onPressed: (){
              setState(() {
                opacity = opacity == 1.0 ? 0.0 : 1.0;
              });
            }, child: Text('Opacity')),
          ],
        ),
      ),
    );
  }
  
}

