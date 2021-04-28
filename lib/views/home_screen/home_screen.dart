import 'package:app/views/home_screen/components/food_card_group.dart';
import 'package:app/views/home_screen/components/food_card_small.dart';
import 'package:app/views/home_screen/components/food_card_wide.dart';
import 'package:app/views/home_screen/components/tag.dart';
import 'package:app/views/home_screen/components/tag_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Stack(
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/background 11.jpg'),
                fit: BoxFit.fitHeight,
                // alignment: Alignment.center,
              )),
            ),
            Positioned(
              top: screenHeight * 0.06,
              child: Container(
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.black54,
                        size: 30,
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: Colors.black54,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: SingleChildScrollView(
                child: Container(
                  width: screenWidth,
                  // height: screenHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
                        child: Text(
                          'Delicious Seafood',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                        child: Text(
                          'We made healthy seafood for you',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      TagGroup(),
                      FoodCardGroup(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
