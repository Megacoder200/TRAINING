import 'package:flutter/material.dart';
import 'Transfe_buildicon1.dart';
import 'Transfer_ContactTile.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2), // Space between avatar and border
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
                      padding: const EdgeInsets.all(2), // Space between avatar and border
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
                        backgroundImage: AssetImage('images/me.png'),
                        radius: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4, // Adjust this to position the dot correctly
                    right: 1, // Adjust this to position the dot correctly
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(219, 245, 5, 5),
                        border: Border.all(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const SizedBox(width: 8), // Space between image and text
              const Text(
                "Transfer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add), // The "+" sign
              onPressed: () {
                // Define the action when the "+" button is pressed
              },
            ),
          ],
        ),
        body: const Center(
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: SingleChildScrollView(

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                TransfeBulidicon1(image: "images/paypal.png"),
                                TransfeBulidicon1(image: "images/etisalat.png"),
                                TransfeBulidicon1(image: "images/mastercard.png"),
                                TransfeBulidicon1(image: "images/images.png"),
                              ]
                          ),
                          SizedBox(height: 20,),
                          TransferContacttile(name: "Ahmed_sameh", account: "AW BANK UNI 234-46589-000", image: "images/me.jpg") ,
                          TransferContacttile(name: "Al-hassan Osama", account: "AW BANK UNI 234-46589-000", image:"images/hassan.jpg") ,
                          TransferContacttile(name: "Mazen mohamed", account: "AW BANK UNI 234-46589-000", image:"images/mazen.jpg") ,
                          TransferContacttile(name: "James Henry", account: "AW BANK UNI 234-46589-000", image:"images/Rodri.jpg") ,
                          TransferContacttile(name: "Oliver Wilson", account: "AW BANK UNI 234-46589-000", image:"images/kane.jpg") ,
                          TransferContacttile(name: "Liam Henry", account: "AW BANK UNI 234-46589-000", image:"images/isco.jpg") ,
                        ]
                    )

                )
            )
        )

      // Placeholder content

    );
  }
}