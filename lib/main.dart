import 'package:flutter/material.dart';
import 'package:flutter_app/welcome_page.dart';
import 'package:intl/intl.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}
class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);
  @override
  _FormState createState() => _FormState();
}
class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();

  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${DateFormat('d-MM-y QQQQ').format(time)}',style: TextStyle(fontSize: 20),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  time = DateTime.now();
                });
              }, child: Text('Current Time')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Phone No'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () async{
                final DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2024)
                );

                setState(() {
                  time = datePicked!;
                });

              }, child: Text('Pick Date')),
            ),
            ElevatedButton(onPressed: (){
              //welcomepage send data back to this screen
              var result = Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(name: _name.text,email: _email.text,phone: _phone.text,)));
              result.then((value) {
                print(value);
                setState(() {
                  _name.text = value['name'];
                });
              });
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}