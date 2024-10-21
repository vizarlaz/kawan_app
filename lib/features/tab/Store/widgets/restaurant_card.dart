import 'package:flutter/material.dart';
import 'package:kawan_app/features/tab/Store/presentation/restaurant_detail_screen.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double rating;
  final String shopDescription;
  final List<Map<String, String>> foodMenu;
  final List<Map<String, String>> drinksMenu;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.foodMenu,
    required this.drinksMenu,
    required this.rating,
    required this.shopDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(name),
        subtitle: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 16,
            ),
            SizedBox(
              width: 4,
            ),
            Text('$rating'),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RestaurantDetailScreen(
                        name: name,
                        rating: rating,
                        shopDescription: shopDescription,
                        imageUrl: imageUrl,
                        foodMenu: foodMenu,
                        drinksMenu: drinksMenu,
                      )));
        },
      ),
    );
  }
}
