import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({
    @override this.quantity,
  });

  final int quantity;

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 10) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // width: screenWidth * 0.4,
            child: Column(
              children: [
                Row(
                  children: [
                    FlatButton(
                      // height: 30,
                      minWidth: 50,
                      onPressed: () {
                        _decrementCounter();
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                      shape: CircleBorder(),
                      color: Colors.black,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$_counter',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      // height: 30,
                      minWidth: 50,
                      onPressed: () {
                        _incrementCounter();
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                      shape: CircleBorder(),
                      color: Colors.black,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
