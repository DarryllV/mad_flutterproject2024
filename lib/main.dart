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
        title: Text('Login page'),
        ),
        body: Align(
          alignment: Alignment.center,  
            child: Column(
              children: [
                TextField(decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600],
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[700],
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green[100],
                    ),
                  ),
                ),

                ),
                
              ElevatedButton(
                child: Text('Log in (Placeholder until i implement it for real)'),
                onPressed: () {
                  //initialize the data
                  MyData data = new MyData('John','Smith');
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Homepage(data: data)),
                );
              },
            ),

              ],
            ),
        ),
    );
  }
}