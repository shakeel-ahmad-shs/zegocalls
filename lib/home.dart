import 'package:flutter/material.dart';
import 'package:zegocalls/calling.dart';

/// ---------------- HOME PAGE ----------------
class HomePage extends StatefulWidget {
  final String userID;
  const HomePage({super.key, required this.userID});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _callIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zego Cloud Calling"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ///  current user id
            Text("Logged in as: ${widget.userID}"),

            // space
            const SizedBox(height: 20),

            // user id input ...................... calling to user other
            TextField(
              controller: _callIDController,
              decoration: const InputDecoration(
                labelText: 'Enter Call ID',
                border: OutlineInputBorder(),
              ),
            ),

            // space
            const SizedBox(height: 20),

            ElevatedButton.icon(
              icon: const Icon(Icons.call),
              label: const Text("Start Call"),
              onPressed: () {
                if (_callIDController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallPage(
                        // calling person
                        callID: _callIDController.text.trim(),

                        // cuurent (you)
                        userID: widget.userID,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
