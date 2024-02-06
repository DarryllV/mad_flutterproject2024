import 'package:flutter/material.dart';

class History extends StatelessWidget {

  final List<String> type = <String>['Public Transport', 'Ez-Link Merchant', 'Ez-Link Merchant'];
  // final List<Icon> icon = <Icon>[Icons.ac_unit,]
  final List<String> date = <String>['22 Dec 2023', '', '23 Dec 2023'];
  final List<String> balance = <String>['\$12.57', '\$10.47', '\$20.47'];
  final List<String> time = <String>['12:20pm', '1:30pm', '8.12am'];
  final List<String> cost = <String>['-\$0.87', '-\$2.10', '+\$10.00'];
  final List<String> purpose = <String>['Train Service', '7-Eleven', 'TopUp'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Usage History page'),),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: cost.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text('${date[index]}', style: TextStyle(fontSize: 20),),

              Container(
                height: 120,
                // color: Colors.amber[balance[index],
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('${type[index]}', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),

                        Text('${purpose[index]}', style: TextStyle(fontSize: 20),),

                        Text('${balance[index]}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),

                        Text('${time[index]}', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(width: 150,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${cost[index]}', style: TextStyle(fontSize: 20),),
                      ],
                    )

                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
                          Divider(height: 5),
      ),
    );
  }
}