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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Home Page')),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Ashok'),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
              }, child: Text('Next')
              )
            ],
          ),
        ),
      ),
    );
  }
  
}

