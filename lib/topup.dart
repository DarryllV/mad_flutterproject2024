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
                padding: EdgeInsets.fromLTRB(60, 20, 60, 50),
                color: Colors.lightBlue[50],
                child: Column(
                  children: [
                    Text('Current Balance', style: TextStyle(fontSize: 30),),
                    SizedBox(height: 45,),
                    Text('\$20.47', style: TextStyle(fontSize: 30),),
                  ],
                ),
              ),
            ],
            ),
          ],
      ),
        ),
    );
  }
}