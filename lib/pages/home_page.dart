import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/my_button.dart';
import 'package:wallet_app_ui/utils/my_card.dart';
import 'package:wallet_app_ui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        shape: CircleBorder(),
        child: Icon(
          Icons.monetization_on,
          size: 32,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
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
          SizedBox(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 955.32,
                  cardNumber: 12345678,
                  expiryMonth: 11,
                  expiryYear: 27,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 5250.20,
                  cardNumber: 12345678,
                  expiryMonth: 10,
                  expiryYear: 28,
                  color: Colors.blue[300],
                ),
                MyCard(
                  balance: 343.80,
                  cardNumber: 12345678,
                  expiryMonth: 11,
                  expiryYear: 25,
                  color: Colors.green[300],
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // Indicadores de página
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),

          SizedBox(height: 40),

          // 3 botones -> send + pay + bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  iconImagePath: 'lib/icons/send-money.png',
                  buttonText: 'Send',
                ),
                MyButton(
                  iconImagePath: 'lib/icons/credit-card.png',
                  buttonText: 'Pay',
                ),
                MyButton(
                  iconImagePath: 'lib/icons/bill.png',
                  buttonText: 'Bills',
                ),
              ],
            ),
          ),
          // column -> stats + transactions
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // statistics
                MyListTile(
                  iconImagePath: 'lib/icons/statistics.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payment and Income',
                ),
                MyListTile(
                  iconImagePath: 'lib/icons/transaction.png',
                  tileTitle: 'Transactions',
                  tileSubTitle: 'Transaction History',
                ),
                // transaction
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
