import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyData {
  final String firstName;
  final String lastName;
  MyData(this.firstName, this.lastName);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Next Page'),
            onPressed: () {
              //initialize the data
              MyData data = new MyData('John','Smith');
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Homepage(data: data)),
              );
            },
          ),
        ),
    );
  }
}