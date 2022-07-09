import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(
            'Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap "-" to decrement',
                style: TextStyle(color: Colors.white70),
              ),
              CounterWidget(),
              Text(
                'Tap "+" to increment',
                style: TextStyle(color: Colors.white70),
              ),
            ],
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
  var counterNumber = 0;

  @override
  void initState() {
    counterNumber = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size.square(135),
        primary: Colors.white70,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _decrement,
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
          Text(
            '$counterNumber',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: _increment,
            icon: Icon(Icons.remove),
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  void _decrement() {
    setState(() {
      counterNumber++;
    });
  }

  void _increment() {
    setState(() {
      counterNumber--;
    });
  }
}
