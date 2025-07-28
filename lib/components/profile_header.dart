import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          _buildHeaderAvatar(),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          _buildHeaderProfile(),
        ],
      ),
    );
  }

  _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/a.jpg"),
      ),
    );
  }

  _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Apple",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "iPhone / iPad / Mac",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Built for Apple Intelligence",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
