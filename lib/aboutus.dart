import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),

          Text('About Us',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20,),

          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: const DecorationImage(
                image: AssetImage('images/aboutezlink.jpg'),
                fit: BoxFit.fitWidth,
              )
            ),
          ),

          SizedBox(height: 20,),

          Text('Established by the Land Transport Authority on 8 January 2002, EZ-Link pioneered the first large-scale contactless payment system for Singapore’s public transit network. Its core business is in the sale, distribution and management of EZ-Link cards, as well as the clearing and settlement of all EZ-Link transactions generated in transit and non-transit sectors.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: Text('Our Website'),
                onPressed: null
                ),
              
              ElevatedButton(
                onPressed: null,
                child: Text('Our YouTube Channel'),
                ),
            ],
          )
        ],
      ),
    );

  }
}