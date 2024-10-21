import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  final String title;

  const CommunityScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Welcome to $title page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
