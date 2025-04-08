import 'package:flutter/material.dart';
import 'package:currency_converter/model/currency_model.dart';
import 'package:currency_converter/service/currency_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCurrency = 'USD';
  CurrencyModel? _currencyModel;
  bool _isLoading = false;

  List<String> currencyCodes = [
    'USD', 'INR', 'EUR', 'GBP', 'JPY', 'AUD', 'CAD', 'CNY', 'SGD', 'AED'
  ];

  @override
  void initState() {
    super.initState();
    fetchRates();
  }

  Future<void> fetchRates() async {
    setState(() {
      _isLoading = true;
    });

    final model = await CurrencyService().fetchCurrency(base: _selectedCurrency);

    setState(() {
      _currencyModel = model;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select Base Currency',
                border: OutlineInputBorder(),
              ),
              value: _selectedCurrency,
              items: currencyCodes.map((String currency) {
                return DropdownMenuItem<String>(
                  value: currency,
                  child: Text(currency),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedCurrency = newValue;
                  });
                  fetchRates();
                }
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _currencyModel == null
                ? const Center(child: Text("No data available"))
                : ListView.builder(
              itemCount: _currencyModel!.rates.length,
              itemBuilder: (context, index) {
                final entries = _currencyModel!.rates.entries.toList();
                final rate = entries[index];
                return ListTile(
                  title: Text(
                      '1 ${_currencyModel!.base} = ${rate.value.toStringAsFixed(4)} ${rate.key}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
