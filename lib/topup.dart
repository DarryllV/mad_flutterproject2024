import 'package:flutter/material.dart';

class TopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TopUp page'),),
        body: Container(
          margin: EdgeInsets.only(top: 70),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row( //current balance
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
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

            TextField(decoration: InputDecoration(
              hintText: 'Top up amount',
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
        ],
      ),
    ),
    );
  }
}