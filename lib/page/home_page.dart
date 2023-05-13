import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// controller for cards
  final _pageController = PageController();

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
              controller: _pageController,
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
          const SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect:
                  ScrollingDotsEffect(activeDotColor: Colors.grey.shade800)),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MyButton(labelButton: "Send", namImage: "send-money.png"),
                MyButton(labelButton: "Paypal", namImage: "credi-card.png"),
                MyButton(labelButton: "Bills", namImage: "bill.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 25, left: 25, top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/image/statistics.png",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Statistics",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Payements and Icome")
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/image/transaction.png",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Transaction",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Your transaction")
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}
