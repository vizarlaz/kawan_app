import 'package:flutter/material.dart';
import 'package:kawan_app/features/tab/Store/data/restaurant_list.dart';
import 'package:kawan_app/features/tab/Store/widgets/banner_section.dart';
import 'package:kawan_app/features/tab/Store/widgets/category_section.dart';
import 'package:kawan_app/features/tab/Store/widgets/custom_app_bar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BannerSection(),
          CategorySection(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Toko',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                RestaurantList(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
