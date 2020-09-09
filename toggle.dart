import 'package:flutter/material.dart';

void main() => runApp(MyHomePage(
  title : 'Toggle Theme',
));

bool _light = true;

ThemeData _darkTheme = ThemeData(
  accentColor : Colors.orange,
  primaryColor : Colors.amber,
  brightness : Brightness.dark,
);

ThemeData _lightTheme = ThemeData(
  accentColor : Colors.pink,
  primaryColor : Colors.blue,
  brightness : Brightness.light,
);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : _light ? _lightTheme : _darkTheme,
      home : Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Switch(
              value : _light,
              onChanged : (state){
                setState((){
                   _light = state;
                 });
               },
             ),
        ),
        floatingActionButton : FloatingActionButton(
          onPressed : null,
          child : Icon(Icons.add),
        ),
      ),
    );
  }
}

