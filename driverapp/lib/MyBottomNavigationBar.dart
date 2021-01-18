import 'package:flutter/material.dart';

void main() {
  runApp(
     MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       

      home: MyBottomNavigationBar(),
    );
  }
}


class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),

           BottomNavigationBarItem(
            icon: new Icon(Icons.request_page),
            label: 'Request',
          ),

           BottomNavigationBarItem(
            icon: new Icon(Icons.rate_review),
            label: 'Ratings',
          ),
        ],
      ),
    );
  }
}