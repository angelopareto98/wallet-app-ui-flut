import 'package:flutter/material.dart';
import 'package:wallet_app_ui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "My",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Cards",
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: const Icon(Icons.add))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  balance: 5250.20,
                  cardNumber: 123456789,
                  expiryMonth: 12,
                  expiryYear: 24,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 250.25,
                  cardNumber: 987654321,
                  expiryMonth: 08,
                  expiryYear: 25,
                  color: Colors.green[300],
                ),
                MyCard(
                  balance: 300.20,
                  cardNumber: 456789123,
                  expiryMonth: 11,
                  expiryYear: 23,
                  color: Colors.yellow[600],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
