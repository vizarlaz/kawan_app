import 'package:flutter/material.dart';
import 'package:kawan_app/features/community/presentation/community.dart';
import 'package:kawan_app/features/tab/home/widgets/card_with_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CardCustom(
                image: 'lib/assets/community.jpg',
                title: 'Community',
                buttonText: 'Find out',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CommunityScreen(title: 'Community')));
                }),
            SizedBox(height: 16),
            CardCustom(
                image: 'lib/assets/event-banner.jpg',
                title: 'Events',
                buttonText: 'Find out',
                onPressed: () {}),
            SizedBox(
              height: 16,
            ),
            CardCustom(
                image: 'lib/assets/soon.jpg',
                title: 'Soon',
                buttonText: 'Find out',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
