import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Page')),

      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Ashok'),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back')
              )
            ],
          ),
        ),
      ),
    );
  }
}