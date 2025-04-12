import 'package:currency_converter/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// d7071495860c42308276a120f637a757
/// website link
/// https://apilayer.com/marketplace/exchangerates_data-api?e=Sign+Up&l=Success
/// https://currencyfreaks.com/#documentation
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen()
    );
  }
}

