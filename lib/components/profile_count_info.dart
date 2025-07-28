import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildInfo("1.5K", "Posts"),
        _buildLine(),
        _buildInfo("5.7M", "Likes"),
        _buildLine(),
        _buildInfo("3.9K", "Share"),
      ],
    );
  }

  _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
      ],
    );
  }

  _buildLine() {
    return Container(
      width: 2,
      height: 30,
      color: Colors.grey,
    );
  }
}
