import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

/// ---------------- CALL PAGE ----------------
class CallPage extends StatelessWidget {
  final String callID;
  final String userID;

  const CallPage({super.key, required this.callID, required this.userID});

  @override
  Widget build(BuildContext context) {
    const int appID = 688806213; // 🔹 Replace with your Zego AppID
    const String appSign =
        'd96f41fd0236ec0e36fa08067edd5829d3c4eea1a487c3c1c97f4d82e7ce1f08'; // 🔹 Replace with your Zego AppSign

    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: appID,
        appSign: appSign,
        userID: userID,
        userName: "user_$userID",
        callID: callID,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      ),
    );
  }
}
