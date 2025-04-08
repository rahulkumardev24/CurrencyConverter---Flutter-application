import 'package:currency_converter/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// d7071495860c42308276a120f637a757
/// website link
/// https://currencyfreaks.com/#documentation
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen()
    );
  }
}

