import 'main.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  final MyData data; //to hold data passed onto this page

  //create a contructor for the page with the data parameter
  homepage({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
          Text(data.firstName + ',' + data.lastName),
        ],
      ),
    );
  }
}