import 'package:flutter/material.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({super.key});

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: [
          Spacer(),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/a.jpg"),
          ),
          Spacer(),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/a.jpg"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
