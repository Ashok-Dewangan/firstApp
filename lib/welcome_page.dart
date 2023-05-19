import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  String name,email,phone;
  //call back

  WelcomePage({Key? key,required this.name,required this.email,required this.phone}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Page')),

      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: $name'),
              Text('Email: $email'),
              Text('Phone: $phone'),
              ElevatedButton(onPressed: (){
                Navigator.pop(context,{'name':'Rahul'});
              }, child: Text('Back')
              )
            ],
          ),
        ),
      ),
    );
  }
}