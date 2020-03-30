import 'package:flutter/material.dart';

import 'double_notched_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Double Notched Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomAppBar(
          color: Colors.black,
          shape: DoubleNotchedButton(), //changed to new class
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Colors.blue,
            height: 56,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 32),
            child: FloatingActionButton(
              child: Icon(
                Icons.home,
              ),
              onPressed: () {},
            ),
          ),
          FloatingActionButton(
            child: Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
