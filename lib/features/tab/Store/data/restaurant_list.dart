import 'package:flutter/material.dart';
import 'package:kawan_app/features/tab/Store/widgets/restaurant_card.dart';

class RestaurantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RestaurantCard(
            name: 'Burger Bangor Express',
            rating: 4.7,
            shopDescription:
                'Penjual burger yang bangor namun bukan hanya menjual burger',
            imageUrl: 'https://via.placeholder.com/100',
            foodMenu: [
              {
                'name': 'Classic Burger',
                'price': '35.000',
                'description':
                    'A Delicious Beef Burger with cheese, lettuce, and tomato.',
                'image': 'https://via.placeholder.com/50'
              },
              {
                'name': 'Cheese Burger',
                'price': '38.000',
                'description':
                    'A Delicious Beef Burger extra cheese, lettuce, and tomato.',
                'image': 'https://via.placeholder.com/50'
              },
            ],
            drinksMenu: [
              {
                'name': 'Big Size Cola',
                'price': '15.000',
                'image': 'https://via.placeholder.com/50'
              },
              {
                'name': 'white colaz with cucumber',
                'price': '25.000',
                'image': 'https://via.placeholder.com/50'
              },
            ]),
        SizedBox(
          height: 10,
        ),
        RestaurantCard(
            name: 'Burger Bangor Express',
            rating: 4.7,
            shopDescription:
                'Penjual burger yang bangor namun bukan hanya menjual burger',
            imageUrl: 'https://via.placeholder.com/100',
            foodMenu: [
              {'name': 'Classic Burger', 'price': '35.000'},
              {'name': 'Cheese Burger', 'price': '38.000'},
            ],
            drinksMenu: [
              {'name': 'Big Size Cola', 'price': '15.000'},
              {'name': 'white colaz with cucumber', 'price': '25.000'},
            ]),
      ],
    );
  }
}
