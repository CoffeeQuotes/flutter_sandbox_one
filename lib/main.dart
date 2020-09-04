// import 'package:blue/test_two.dart';
// import 'package:blue/post_list.dart';
import 'package:blue/grid_view.dart';
import 'package:flutter/material.dart';
// import 'package:blue/test.dart';

import 'package:blue/OurButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
      ),
      // home: TestTwo(),
      // home: PostList(),
      home: GridViewExample(),
      // home: MyHomePage(title: 'An App that can Count to'),
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
  int _counter = 0;
  String _displayedString;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (_counter == 0)
    //   _displayedString = 'None';
    // else
    //   _displayedString = _counter.toString();
    _displayedString = _counter == 0 ? 'None' : '$_counter';
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title} $_counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _displayedString,
              style: Theme.of(context).textTheme.headline1,
            ),
            FlatButton(
              onPressed: _resetCounter,
              child: Text(
                'Reset counter',
                style: Theme.of(context).textTheme.button,
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
      floatingActionButton: OurButton(
        onPressed: _incrementCounter,
        textColor: Colors.white,
        text: 'Make the Counter ${_counter + 1}',
        backgroundColor: Theme.of(context).primaryColor,
        splashColor: Theme.of(context).primaryColorLight,
      ),
    );
  }
}
