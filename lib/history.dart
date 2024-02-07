import 'package:flutter/material.dart';

class MyIcons {
  final IconData icon;
  MyIcons({this.icon});
}

List iconlist = [
  MyIcons(icon: Icons.credit_card),
  MyIcons(icon: Icons.atm),
  MyIcons(icon: Icons.bus_alert),
  MyIcons(icon: Icons.train),
  MyIcons(icon: Icons.bus_alert),
];

class History extends StatelessWidget {

  final List<String> type = <String>['Public Transport', 'Ez-Link Merchant', 'Ez-Link Merchant', 'Public Transport', 'Public Transport'];
  // final List<IconData> icon = <IconData>[Icons.credit_card, Icons.atm, Icons.bus_alert, Icons.train, Icons.bus_alert];
  final List<String> date = <String>['22 Dec 2023', '', '23 Dec 2023', '', ''];
  final List<String> balance = <String>['\$12.57', '\$10.47', '\$20.47', '\$19.40', '\$18.33'];
  final List<String> time = <String>['12:20pm', '1:30pm', '8.12am', '8.23am', '9.03am'];
  final List<String> cost = <String>['-\$0.87', '-\$2.10', '+\$10.00', '-\$1.07', '-\$1.07'];
  final List<String> purpose = <String>['Train Service', '7-Eleven', 'TopUp', 'Bus Service', 'Train Service'];
  

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

                    SizedBox(width: 55,),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(iconlist[index].icon, size: 40,),
                      ],
                    ),

                    SizedBox(width: 55,),

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