import 'dart:convert';

import 'package:currency_converter/service/currency_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CurrencyService currencyService = CurrencyService();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()  {
         currencyService.fetchCurrency();
        }, child: Text("Hit API")),
      ),
    );
  }


}
