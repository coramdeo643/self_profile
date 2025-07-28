import 'package:flutter/material.dart';

class ProfileBtn extends StatefulWidget {
  const ProfileBtn({super.key});

  @override
  State<ProfileBtn> createState() => _ProfileBtnState();
}

class _ProfileBtnState extends State<ProfileBtn> {
  bool _isFollowing = false; // 초기 상태는 'Follow'

  void _toggleFollowStatus() {
    setState(() {
      _isFollowing = !_isFollowing;
      if (_isFollowing) {
        final s = SnackBar(
          content: Text("Followed Successfully!"),
        );
        ScaffoldMessenger.of(context).showSnackBar(s);
      } else {
        // Unfollow 시 SnackBar (선택 사항)
        final s = SnackBar(
          content: Text("Unfollowed."),
        );
        ScaffoldMessenger.of(context).showSnackBar(s);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Follow/Unfollow 버튼 상태 결정
    String followUnfollowButtonText = _isFollowing ? "Unfollow" : "Follow";
    Color followUnfollowBackgroundColor =
        _isFollowing ? Colors.white : Colors.lightGreen;
    Color followUnfollowTextColor =
        _isFollowing ? Colors.lightGreen : Colors.white;
    BoxBorder? followUnfollowBorder =
        _isFollowing ? Border.all(color: Colors.lightGreen) : null;

    // Follow/Unfollow 버튼 UI 구성
    Container followUnfollowButton = Container(
      width: 160,
      height: 44,
      decoration: BoxDecoration(
        color: followUnfollowBackgroundColor,
        borderRadius: BorderRadius.circular(30),
        border: followUnfollowBorder,
      ),
      child: Center(
        child: Text(
          followUnfollowButtonText,
          style: TextStyle(
              color: followUnfollowTextColor, fontWeight: FontWeight.bold),
        ),
      ),
    );

    // Message 버튼 UI 구성 (기존 코드 유지)
    Container messageButton = Container(
      width: 160,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          "Message",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Follow/Unfollow 버튼 (탭 가능)
          InkWell(
            onTap: _toggleFollowStatus, // 이 버튼을 탭하면 _toggleFollowStatus 호출
            child: followUnfollowButton,
          ),
          // Message 버튼 (탭 가능)
          InkWell(
            onTap: () {
              // Message 버튼 탭 시 동작
              print("Message button tapped!");
              final s = SnackBar(
                content: Text("Message Clicked!"),
              );
              ScaffoldMessenger.of(context).showSnackBar(s);
              // 여기에 메시지 관련 로직 추가 (예: 새 화면으로 이동 등)
            },
            child: messageButton,
          ),
        ],
      ),
    );
  }
}
