import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Welcome')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "HELLO and welcome to our program sir\nTHIS IS THE STARTUP PAGE AND THIS APP IS DEVELOPED BY AHMED SAMEH\nAll rights reserved",
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login_page1');  // Route to LoginPage1 when pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[700],  // Purple color for the button
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),  // Adjust size (not too small)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),  // Border radius of 40
                ),
                elevation: 5,  // Slight shadow
              ),
              child: const Text(
                "Let's Start",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
