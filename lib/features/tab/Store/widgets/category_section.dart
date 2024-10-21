import 'package:flutter/material.dart';
import 'package:kawan_app/features/tab/Store/widgets/category_button.dart';

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryButton(label: 'Resto Terdekat', icon: Icons.place),
            CategoryButton(label: 'Paling andalan', icon: Icons.star),
            CategoryButton(label: 'hayo makan', icon: Icons.add_circle_outline),
          ],
        ),
      ),
    );
  }
}
