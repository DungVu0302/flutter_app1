import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          cardColor: Colors.green),
      home: BasicSliverAppbar(),
    );
  }
}

class BasicSliverAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar'),
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Image.asset('assets789/forest.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
