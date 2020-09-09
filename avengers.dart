import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
	title : 'Avengers',
  debugShowCheckedModeBanner : false,
	home : MyHomePage(
		title : 'Avengers Infinity War',
	),
));

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  List<String> stones = ['Snapped','Power Stone','Space Stone','Reality Stone','Soul Stone','Time Stone','Mind Stone'];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Thanos has :',
            ),
            Text(
              stones[_counter % 7],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

