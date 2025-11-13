import 'package:flutter/material.dart';
import 'package:zegocalls/login.dart';

void main() {
  runApp(const ZegoCallApp());
}

class ZegoCallApp extends StatelessWidget {
  const ZegoCallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zego Call Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
