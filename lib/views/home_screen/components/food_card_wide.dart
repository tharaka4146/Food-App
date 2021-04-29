import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCardWide extends StatefulWidget {
  FoodCardWide({
    Key key,
    this.txt,
    this.foodImage,
  }) : super(key: key);

  final String txt;
  final String foodImage;

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<FoodCardWide> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          // margin: EdgeInsets.only(right: 18, top: 20),
          // padding: EdgeInsets.all(5),
          height: screenHeight * 0.18,
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // margin: EdgeInsets.only(bottom: 0),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    widget.foodImage,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        widget.txt,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          // color: Colors.white,
                          // fontFamily:
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'lorem ipsum dolor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.black45,
                          // fontFamily:
                        ),
                      ),
                    ),
                    Text(
                      r"$ 12.00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        // color: Colors.black45,
                        // fontFamily:
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
