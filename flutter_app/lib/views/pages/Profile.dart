import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile"),
      ),bottomNavigationBar: BottomNavBar(),
    );
  }
}
