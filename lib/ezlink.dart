import 'package:flutter/material.dart';
import 'package:flutter_project/history.dart';
import 'package:flutter_project/topup.dart';

class Ezlink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ezlink page'),),
      body: Center(
      child: Container(
        height: 500,
        width: 400,
        child: Column(
          children: [
            Card(
              color: Colors.yellow[700],
              elevation: 15,
              shadowColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
                ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    SizedBox(height: 20,),
                    
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Container(width: 72, height: 72,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('images/12567167.jpeg'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Darryll Vincent',
                       style: Theme.of(context).textTheme.headline5
                      ),
                      Text(
                        'T0574398I',
                        style: Theme.of(context).textTheme.headline6
                      ),
                      Text(
                        '\$18.33',
                        style: Theme.of(context).textTheme.headline6
                      ),
                      ],
                    ),
                  ],
                ),


              SizedBox(height: 30),//Used often to create space between elements
              
              Container(
                width: 400,
                height: 40,
                child: Image(
                  image: AssetImage('images/barcode.jpeg'),
                  height: 100,
                  width: 400,
                  fit: BoxFit.fitWidth,
                ),
              ),
              
              SizedBox(height: 10,),

            ],
                  ),
                ),
              ),
              
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      child: Text('Top up balance'),
                      onPressed: () {
                        //initialize the data
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TopUp()),
                      );
                    },
                  ),

                  SizedBox(width: 20,),

                  ElevatedButton(
                      child: Text('View Usage History'),
                      onPressed: () {
                        //initialize the data
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => History()),
                      );
                    },
                  ),
                  
                ],
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      child: Text('Back'),
                      onPressed: () {
                        //initialize the data
                        Navigator.pop(context);
                    },
                  ),
                  
                ],
              ),
          ],
        ),
          
        ),
      ),
    );
  }
}