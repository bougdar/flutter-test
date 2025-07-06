import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class It extends StatelessWidget {
  const It({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("IT"),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
