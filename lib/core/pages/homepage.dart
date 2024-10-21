// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kawan_app/features/tab/home/presentation/home.dart';
import 'package:kawan_app/features/tab/Store/presentation/store_screen.dart';
import 'package:kawan_app/features/tab/Profile/presentation/profile.dart';
import 'package:kawan_app/features/tab/Message/presentation/Message_Screen.dart';

class HomePageMenu extends StatefulWidget {
  HomePageMenu({Key? key});

  @override
  State<HomePageMenu> createState() => _homePageMenuState();
}

class _homePageMenuState extends State<HomePageMenu> {
  int myCurrentIndex = 0;
  List pages = [
    const HomeScreen(),
    const StoreScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  //Bottom Nav Bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 25,
            offset: const Offset(8, 20),
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              selectedItemColor: Colors.cyan.shade700,
              unselectedItemColor: Colors.black,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.storefront_outlined), label: "Store"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble_outline_rounded),
                    label: "Message"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: "Profile"),
              ]),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
