import 'package:flutter/material.dart';
import 'package:self_profile/theme.dart';

import 'components/profile_btn.dart';
import 'components/profile_count_info.dart';
import 'components/profile_drawer.dart';
import 'components/profile_header.dart';
import 'components/profile_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildAppBar(),
      body: Column(
        children: [
          ProfileHeader(),
          ProfileCountInfo(),
          ProfileBtn(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back),
    title: Text("Profile"),
    centerTitle: true,
  );
}
