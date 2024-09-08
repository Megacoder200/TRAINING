import 'package:flutter/material.dart';
import 'package:go_up/pagess/Home_page.dart';
import 'package:go_up/pagess/More_page.dart';
import 'package:go_up/pagess/Reports_page.dart';
import 'package:go_up/pagess/Transactions_Page.dart';
import 'package:go_up/pagess/Transfer_page.dart';
import 'package:go_up/pagess/login_page.dart';
import 'package:go_up/pagess/loginscreen2.dart';
import 'package:go_up/pagess/login_screen3.dart';
import 'package:go_up/pagess/login_page1.dart';
import 'package:go_up/pagess/bootom_nav_bar.dart';
import 'package:go_up/pagess/start_up_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home:  WelcomePage(),  // Use PascalCase here
      routes: {
        '/login': (context) => const LoginPage(), // Define the route for LoginPage
        '/login_page2': (context) => const LoginScreen2(), // Define route for LoginPage2
        '/login_page3': (context) => const login_screen3(), // Define route for LoginPage3
        '/login_page1': (context) => const LoginScreen1(), // Define the route for LoginPage1
        '/home': (context) => const HomePage(), // Route for HomePage
        '/transfer': (context) => const TransferPage(), // Route for TransferPage
        '/transaction': (context) => const TransactionsPage(), // Route for TransactionPage
        '/more': (context) => const MorePage(), // Route for MorePage
      },



    );

  }
}




