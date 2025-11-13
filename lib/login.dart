import 'package:flutter/material.dart';
import 'package:zegocalls/home.dart';

/// ---------------- LOGIN PAGE ----------------
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Zego Call Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Enter your User ID to continue",
              style: TextStyle(fontSize: 18),
            ),

            //  space
            const SizedBox(height: 20),

            // input for uerid
            TextField(
              controller: _userIDController,
              decoration: const InputDecoration(
                labelText: 'User ID',
                border: OutlineInputBorder(),
              ),
            ),

            //  space
            const SizedBox(height: 20),

            /// button navigation towards  home
            ElevatedButton(
              onPressed: () {
                if (_userIDController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(userID: _userIDController.text.trim()),
                    ),
                  );
                }
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
