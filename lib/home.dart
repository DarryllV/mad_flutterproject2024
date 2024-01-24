import 'package:flutter/material.dart';
import 'package:flutter_project/ezlink.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold, 
              ),
              ),

            Text(
                'Please click any of these buttons to continue.',
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold, 
                ),
              ),

            ElevatedButton(
              child: Text('View Ezlink'),
              onPressed: () {
              //initialize the data
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ezlink()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}