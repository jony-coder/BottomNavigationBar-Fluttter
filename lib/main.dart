import 'package:bottom_navigation/Four.dart';
import 'package:bottom_navigation/Three.dart';
import 'package:bottom_navigation/Two.dart';
import 'package:flutter/material.dart';

import 'One.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final pages =[
    One(),
    Two(),
    Three(),
    Four()
  ];
  var _currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,

          items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
            icon: Icon((Icons.message)),
            title: Text("Message")
        ),

        BottomNavigationBarItem(
            icon: Icon((Icons.call)),
            title: Text("Call")
        ),

        BottomNavigationBarItem(
            icon: Icon((Icons.pan_tool)),
            title: Text("Pan_Tool")
        ),

        BottomNavigationBarItem(
            icon: Icon((Icons.radio)),
            title: Text("Radio")
        ),



      ],
        onTap: (index){
            setState(() {
              _currentindex=index;
            });
        },


      ),
      body: pages[_currentindex],
    );
  }
}


