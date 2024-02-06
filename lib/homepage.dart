import 'main.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'home.dart';
import 'profile.dart';
import 'ezlink.dart';
import 'history.dart';
import 'aboutus.dart';

class Homepage extends StatefulWidget {
  final MyData data; //to hold data passed onto this page

  //create a contructor for the page with the data parameter
  Homepage({Key key, @required this.data}) : super(key: key);

  @override

  _HomepageState createState() => _HomepageState();
}

  class _HomepageState extends State<Homepage> {
    String title = 'Home';
    int index = 0;
    List<Widget> list = [Home(), Ezlink(), Profile(), History(), LoginPage(), AboutUs()];

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          // body: Home(),
          // drawer: MyDrawer(),
          body: list[index],
          drawer: MyDrawer(onTap: (context, i, txt){
            setState(() { index = i;
                          title = txt;
                          Navigator.pop(context);
            });
          }
          ),
        ),
      );
    }
  }