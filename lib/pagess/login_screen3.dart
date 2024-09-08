import 'package:flutter/material.dart';

class login_screen3 extends StatelessWidget {
  const login_screen3({super.key});

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
                  child: Image.asset("images/login3.png"), // Replace with your asset image
                ),
                const SizedBox(height: 24),

                // Title text
                const Text(
                  'Bills Payment Made Easy',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // Subtitle text
                Text(
                  'Pay monthly or daily bills at home in a site of ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Transforme',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,

                  ),
                ),

                const SizedBox(height: 32),

                // Indicator dots
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Route to LoginPage when pressed
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
                'Go to Login & Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 18), // White text inside the button
              ),
          )

              ]
          ),
        ),
      ),
    );
  }
}