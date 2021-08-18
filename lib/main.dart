import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
          backgroundColor: Color(0xFF4255AB),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFF7685C1),
        body: Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Tap \"-\" to decrement",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CounterWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Tap \"+\" to increment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
        color: Color(0xFFADB2CC),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: _decrementCounter,
        ),
        TextButton(
          onPressed: null,
          child: Text(
            '$_count',
            style: TextStyle(
              color: Color(0xFF333847),
              fontSize: 20,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: _incrementCounter,
        ),
      ],
    ),
  );
}
