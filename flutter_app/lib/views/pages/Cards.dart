import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cards"),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
