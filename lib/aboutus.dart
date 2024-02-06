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
          Text('About Us',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 120,
            height: 120,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/aboutezlink.jpg'),
            ),
          ),
          SizedBox(height: 15,),
          Text('Established by the Land Transport Authority on 8 January 2002, EZ-Link pioneered the first large-scale contactless payment system for Singapore’s public transit network. Its core business is in the sale, distribution and management of EZ-Link cards, as well as the clearing and settlement of all EZ-Link transactions generated in transit and non-transit sectors.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}