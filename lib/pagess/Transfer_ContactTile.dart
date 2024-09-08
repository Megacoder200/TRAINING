import 'package:flutter/material.dart';

class TransferContacttile extends StatelessWidget {

  final String name;
  final String account;
  final String image;

  const TransferContacttile({super.key,

    required this.name,
    required this.account,
    required this.image,
  });


  @override
  Widget build(BuildContext context) {


    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),

            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  account,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
