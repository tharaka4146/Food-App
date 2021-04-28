import 'package:flutter/cupertino.dart';

import 'food_card_small.dart';
import 'food_card_wide.dart';

class FoodCardGroup extends StatefulWidget {
  FoodCardGroup({Key key}) : super(key: key);

  @override
  _FoodCardGroupState createState() => _FoodCardGroupState();
}

class _FoodCardGroupState extends State<FoodCardGroup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoodCardSmall(
                txt: 'Steak',
                foodImage: 'assets/images/food 4.png',
              ),
              FoodCardSmall(
                txt: 'Steak',
                foodImage: 'assets/images/food 4.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: FoodCardWide(
            txt: 'Steak',
            foodImage: 'assets/images/food 4.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoodCardSmall(
                txt: 'Steak',
                foodImage: 'assets/images/food 4.png',
              ),
              FoodCardSmall(
                txt: 'Steak',
                foodImage: 'assets/images/food 4.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
