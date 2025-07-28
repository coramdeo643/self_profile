// import 'package:flutter/material.dart';
//
// class ProfileBtn extends StatefulWidget {
//   const ProfileBtn({super.key});
//
//   @override
//   State<ProfileBtn> createState() => _ProfileBtnState();
// }
//
// class _ProfileBtnState extends State<ProfileBtn> {
//   String displayText = "Follow";
//   late Function(String msg) onCallback;
//
//   void handleCallback(String msg) {
//     setState(() {
//       displayText = msg;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             width: 160,
//             height: 44,
//             decoration: BoxDecoration(
//               color: Colors.lightGreen,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: Center(
//               child: Text(
//                 displayText,
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//           Follow(
//             onCallback: handleCallback,
//             context: context,
//           ),
//           CancelBtn(
//             onCallback: handleCallback,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Follow extends StatelessWidget {
//   final String message = "Followed";
//   Function(String msg) onCallback;
//   Follow({required this.onCallback, super.key, required BuildContext context});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         onCallback(message);
//         final s = SnackBar(
//           content: Text("Followed Successfully!"),
//         );
//         ScaffoldMessenger.of(context).showSnackBar(s);
//       },
//       child: Container(
//         width: 70,
//         height: 44,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Colors.lightGreen),
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Center(
//           child: Text(
//             "Follow",
//             style: TextStyle(color: Colors.lightGreen),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CancelBtn extends StatelessWidget {
//   final String message = "Follow";
//   Function(String msg) onCallback;
//   CancelBtn({required this.onCallback, super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         onCallback(message);
//       },
//       child: Container(
//         width: 70,
//         height: 44,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Colors.lightGreen),
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Center(
//           child: Text(
//             "Cancel",
//             style: TextStyle(color: Colors.lightGreen),
//           ),
//         ),
//       ),
//     );
//   }
// }
