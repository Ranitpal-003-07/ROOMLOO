import 'package:flutter/material.dart';

class RoommateFinderScreen extends StatelessWidget {
  const RoommateFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Roommate")),
      body: Center(child: Text("Swipe Left/Right to Match")),
    );
  }
}
