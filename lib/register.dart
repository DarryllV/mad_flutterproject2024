import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
        ),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,  
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(decoration: InputDecoration(
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
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Email',
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
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                
                Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Password',
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
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Confirm Password',
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
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),

                ElevatedButton(
                  child: Text('Register'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                ],
              ),
          ),
        ),
    );
  }
}