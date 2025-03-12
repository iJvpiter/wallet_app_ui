import 'package:flutter/material.dart';
import 'package:wallet_app_ui/utils/my_card.dart';

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
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // Plus Button
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // cards
            Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      balance: 955.32,
                      cardNumber: 12345678,
                      expiryMonth: 11,
                      expiryYear: 27,
                      color: Colors.deepPurple[400],
                    ),
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYear: 28,
                      color: Colors.blue[400],
                    ),
                    MyCard(
                      balance: 343.80,
                      cardNumber: 12345678,
                      expiryMonth: 11,
                      expiryYear: 25,
                      color: Colors.green[400],
                    ),
                  ],
                )),

            // 3 buttons -> send + pay + bills

            // column -> stats + transactions
          ]),
        ));
  }
}
