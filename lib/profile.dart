import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/12567167.jpeg'),
            ),
          ),
          SizedBox(height: 15,),
          Text('Darryll Vincent',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 19,),
          Text('sample@nyp.edu.sg',
            style: TextStyle(
              fontSize: 12),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
              child: Text('Edit profile'),
              onPressed: () {
              //initialize the data
              },
            ),
            ],
          )
        ],
      ),
    );
  }
}