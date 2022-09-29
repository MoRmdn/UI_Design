import 'package:flutter/material.dart';

import '../predict.dart';
import '../profile_page.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const Profile(),
                ),
              ),
              child: const ListTile(
                title: Text("Profile"),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const Predict(),
                ),
              ),
              child: const ListTile(
                title: Text("Predict"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
