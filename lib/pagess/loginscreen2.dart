import 'package:flutter/material.dart';
import 'package:go_up/pagess/login_page.dart.';
import 'package:go_up/pagess/login_screen3.dart';


class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder for the image at the top
              Container(
                height: 200,
                child:Image.asset("images/login2.png"),  // Replace with your asset image
              ),
              const SizedBox(height: 24),
              // Title text
              const Text(
                'Free Transactions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // Subtitle text
              Text(
                'Provides the quality of the financial system with free money transactions without any fees.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login_page3'); // Route to LoginPage3 when pressed
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[700], // Purple color for the button
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20), // Adjust size (not too small)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),  // Border radius of 40
              ),
              elevation: 5, // Slight shadow
            ),
            child: const Text(
              'Continue',
              style: TextStyle(color: Colors.white, fontSize: 18), // White text inside the button
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}