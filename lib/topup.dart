import 'package:flutter/material.dart';
import 'package:flutter_project/ezlink.dart';

class TopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TopUp page'),),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 70),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row( //current balance
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Column(
                    children: [
                      Text('Current Balance', style: TextStyle(fontSize: 30),),
                      SizedBox(height: 40,),
                      Text('\$20.47', style: TextStyle(fontSize: 30),),
                      SizedBox(height: 30,),
                   ],
                  ),
                ),

              ],
              ),

              SizedBox(height: 10,),

              Text('Enter topup amount:', style: TextStyle(fontSize: 24),),

              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(decoration: InputDecoration(
                  hintText: 'Top up amount',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600],
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[700],
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(
                      color: Colors.blue[200],
                     ),
                  ),
                  contentPadding: EdgeInsets.all(20),
             ),
          ),
              ),

          SizedBox(height: 20,),

          ElevatedButton(
            child: Text('Top up'),
            onPressed: () {
              //initialize the data
              Navigator.pop(context);
            },
          ),

          SizedBox(height: 20,),

          ],
      ),
    ),
        ),
    );
  }
}