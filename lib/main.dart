import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountBalanceScreen(),
    );
  }
}

class AccountBalanceScreen extends StatefulWidget {
  @override
  _AccountBalanceScreenState createState() => _AccountBalanceScreenState();
}

class _AccountBalanceScreenState extends State<AccountBalanceScreen> {
  int _accountBalance = 25000;

  void _increment() {
    setState(() {
      _accountBalance += 100;
    });
  }

  void _decrement() {
    setState(() {
      _accountBalance -= 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple, // Set background color to purple
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Account Balance:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$_accountBalance',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_upward,
                    size: 40,
                    color: Colors.green,
                  ),
                  onPressed: _increment,
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(
                    Icons.arrow_downward,
                    size: 40,
                    color: Colors.yellow,
                  ),
                  onPressed: _decrement,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
