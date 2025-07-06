import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class Manage extends StatelessWidget {
  const Manage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Manage"),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
