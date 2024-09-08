import 'package:flutter/material.dart';
import 'transaction_item.dart';
import 'transactions_page.dart';

class HomePage extends StatelessWidget {
 const  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1/4 Circle at the top right
          Positioned(
            top: -74,
            left: 251,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(248, 244, 212, 154), // Change to your desired color
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
            ),
          ),
          // Half Circle at the middle left
          Positioned(
            top: 246,
            left: -72,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(250, 152, 207, 244), // Change to your desired color
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
            ),
          ),
          // Main content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      // Container with gradient border around CircleAvatar
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4), // Space between avatar and border
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 98, 47, 238),
                                  Color.fromARGB(255, 239, 142, 242)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(4), // Space between avatar and border
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 238, 238, 239),
                                    Color.fromARGB(255, 251, 251, 251)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('images/me.jpg'),
                                radius: 30,
                              ),
                            ),
                          ),
                          // Red dot at the top right of the avatar
                          Positioned(
                            top: 5.5,
                            right: 4,
                            child: Container(
                              width: 13,
                              height: 13,
                              decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(219, 245, 5, 5),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(width: 16),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Ahmed sameh ',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20, width: 50),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.15,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              " Current Balance",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              ' \$12,567,890',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.2,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 98, 47, 238),
                              Color.fromARGB(255, 238, 156, 241)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              ' 3452 1235 7894 1678',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              ' 4/25/2025',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'LAST TRANSACTIONS',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the TransactionsPage when 'More' is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TransactionsPage(),
                            ),
                          );
                        },
                        child: const Row(
                          children: [
                            Text(
                              'More',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            Icon(Icons.arrow_right), // The arrow icon
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const TransactionItem(
                    title: 'Shopping',
                    date: 'Tue 15.06.2021',
                    amount: '\$29.90',
                  ),
                  const TransactionItem(
                    title: 'zamalek Ticket',
                    date: 'Wed 16.06.2021',
                    amount: '\$9.50',
                  ),
                  const TransactionItem(
                    title: 'Amazon',
                    date: 'Thu 17.06.2021',
                    amount: '\$19.30',
                  ),
                  const TransactionItem(
                    title: 'REAL MADRID T-SHIRTS',
                    date: 'Fri 18.06.2021',
                    amount: '\$14.99',
                  ),
                  const SizedBox(height: 10),
                  const TransactionItem(
                    title: 'Books',
                    date: 'Fri 08.05.2021',
                    amount: '\$14.00',
                  ),
                  const SizedBox(height: 10),
                  const TransactionItem(
                    title: 'Spotify',
                    date: 'Mon 11.03.2021',
                    amount: '\$8.99',
                  ),
                  const SizedBox(height: 10),
                  const TransactionItem(
                    title: 'Tryhackme',
                    date: 'Fri 5.11.2021',
                    amount: '\$108.99',
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
