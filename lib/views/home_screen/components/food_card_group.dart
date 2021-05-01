import 'package:app/views/home_screen/components/food_card_small.dart';
import 'package:app/views/home_screen/components/food_card_wide.dart';
import 'package:flutter/cupertino.dart';

// import 'food_card_small.dart';
// import 'food_card_wide.dart';

class FoodCardGroup extends StatefulWidget {
  // FoodCardGroup({required Key key}) : super(key: key);

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
                txt2: 'lorem ipsum dolor',
                price: r'$ 12.00',
                foodImage: 'assets/images/food 4.png',
              ),
              FoodCardSmall(
                txt: 'Steak',
                txt2: 'lorem ipsum dolor',
                price: r'$ 12.00',
                foodImage: 'assets/images/food 4.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: FoodCardWide(
            txt: 'Steak',
            txt2: 'lorem ipsum dolor',
            price: r'$ 12.00',
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
                txt2: 'lorem ipsum dolor',
                price: r'$ 12.00',
                foodImage: 'assets/images/food 4.png',
              ),
              FoodCardSmall(
                txt: 'Steak',
                txt2: 'lorem ipsum dolor',
                price: r'$ 12.00',
                foodImage: 'assets/images/food 4.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoodCardSmall(
                txt: 'Steak',
                txt2: 'lorem ipsum dolor',
                price: r'$ 12.00',
                foodImage: 'assets/images/food 4.png',
              ),
              FoodCardSmall(
                txt: 'Steak',
                txt2: 'lorem ipsum dolor',
                price: r'$ 12.00',
                foodImage: 'assets/images/food 4.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: FoodCardWide(
            txt: 'Steak',
            txt2: 'lorem ipsum dolor',
            price: r'$ 12.00',
            foodImage: 'assets/images/food 4.png',
          ),
        ),
        SizedBox(
          height: 70,
        )
      ],
    );
  }
}
