import 'dart:convert';

import 'package:currency_converter/model/currency_model.dart';
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
  Future<CurrencyModel?>? _currency;


  @override
  void initState() {
    super.initState();
    _currency = currencyService.fetchCurrency();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder<CurrencyModel?>(
        future: _currency,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else if(snapshot.hasError){
            return Center(child: Text("Error Found : ${snapshot.hasError}"),);
          }else if(snapshot.hasData){
            final currencyData = snapshot.data;
            final currencyRate = currencyData!.rates;
            return Center(child: Container(child: Column(
              children: [
                Text(currencyRate!.iNR ?? "No Found"),
                Text(currencyRate!.uSD ?? "No Found"),
                Text(currencyRate!.aIXBT ?? "No Found"),
                Text(currencyRate!.aGLD ?? "No Found"),
              ],
            ),));
          }else {
            return Center(child: Text("No data Found"),);
          }
        },
      ),
    );
  }
}
