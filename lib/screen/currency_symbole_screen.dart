import 'package:currency_converter/service/currency_service.dart';
import 'package:flutter/material.dart';

import '../model/supported_currencies.dart';

class CurrencySymbolScreen extends StatefulWidget {
  const CurrencySymbolScreen({super.key});

  @override
  State<CurrencySymbolScreen> createState() => _CurrencySymbolScreenState();
}

class _CurrencySymbolScreenState extends State<CurrencySymbolScreen> {
  final CurrencyService currencyService = CurrencyService();
  Future<SupportedCurrenciesResponse?>? _supportedCurrenciesResponse;

  @override
  void initState() {
    super.initState();
    _supportedCurrenciesResponse = currencyService.supportCurrency();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currency Symbols")),
      /// Future Builder
      body: FutureBuilder<SupportedCurrenciesResponse?>(
        future: _supportedCurrenciesResponse,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error Found"));
          } else if (snapshot.hasData) {
            final response = snapshot.data!;
            final map = response.supportedCurrenciesMap;
            print("Currency map size: ${map.length}");
            if (map.isEmpty) {
              return const Center(child: Text("Currency list is empty"));
            }
            final list = map.entries.toList();
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final entry = list[index];
                final currency = entry.value;
                return ListTile(
                  /// --- icon --- ////
                  leading: Image.network(
                    currency.icon,
                    width: 30,
                    height: 30,
                    errorBuilder: (_, __, ___) => Icon(Icons.money),
                  ),
                  title: Text(
                    '${currency.currencyName} (${currency.currencyCode})',
                  ),
                  subtitle: Text(
                    '${currency.countryName} (${currency.countryCode})',
                  ),
                  trailing: Text(currency.status),
                );
              },
            );
          } else {
            return const Center(child: Text("No Data Found"));
          }
        },
      ),
    );
  }
}
