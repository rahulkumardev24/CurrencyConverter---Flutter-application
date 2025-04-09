import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';

class CurrencyConverterScreen extends StatefulWidget {
  const CurrencyConverterScreen({super.key});

  @override
  State<CurrencyConverterScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CurrencyConverterScreen> {
  String baseCurrency = 'USD';
  String targetCurrency = 'INR';
  double? exchangeRate;
  double? convertedAmount;
  bool isLoading = false;
  String errorMessage = '';
  bool isDarkMode = false;

  final TextEditingController amountController = TextEditingController();

  List<String> currencies = [
    'USD', 'EUR', 'GBP', 'INR', 'JPY', 'AUD', 'CAD', 'CNY', 'CHF', 'SGD'
  ];

  // Currency flags mapping (using emoji flags for simplicity)
  final Map<String, String> currencyFlags = {
    'USD': '🇺🇸',
    'EUR': '🇪🇺',
    'GBP': '🇬🇧',
    'INR': '🇮🇳',
    'JPY': '🇯🇵',
    'AUD': '🇦🇺',
    'CAD': '🇨🇦',
    'CNY': '🇨🇳',
    'CHF': '🇨🇭',
    'SGD': '🇸🇬',
  };

  Future<void> getExchangeRate() async {
    // Close keyboard if open
    FocusScope.of(context).unfocus();

    // Validate input
    if (amountController.text.isNotEmpty &&
        double.tryParse(amountController.text) == null) {
      setState(() {
        errorMessage = 'Please enter a valid number';
        isLoading = false;
      });
      return;
    }

    setState(() {
      isLoading = true;
      exchangeRate = null;
      convertedAmount = null;
      errorMessage = '';
    });

    final url = Uri.parse(
        'https://api.apilayer.com/exchangerates_data/latest?base=$baseCurrency&symbols=$targetCurrency');

    try {
      final response = await http.get(
        url,
        headers: {
          'apikey': 'rSCoN57FlqCCI389W4z28AjBF9SZ8XkJ',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          exchangeRate = data['rates'][targetCurrency];
          double amount = double.tryParse(amountController.text) ?? 1.0;
          convertedAmount = exchangeRate! * amount;
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Error: ${response.statusCode} - ${response.reasonPhrase}';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Network error: Please check your connection';
        isLoading = false;
      });
    }
  }

  void swapCurrencies() {
    setState(() {
      final temp = baseCurrency;
      baseCurrency = targetCurrency;
      targetCurrency = temp;
      if (exchangeRate != null) {
        exchangeRate = 1 / exchangeRate!;
        double amount = double.tryParse(amountController.text) ?? 1.0;
        convertedAmount = exchangeRate! * amount;
      }
    });
  }

  Widget buildCurrencyDropdown(String label, String value, ValueChanged<String?> onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey[800] : Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: isDarkMode ? Colors.white70 : Colors.grey[700],
            ),
          ),
          DropdownButton<String>(
            value: value,
            isExpanded: true,
            underline: const SizedBox(),
            icon: Icon(Icons.arrow_drop_down, color: isDarkMode ? Colors.white : Colors.black),
            style: TextStyle(
              fontSize: 18,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            items: currencies.map((String currency) {
              return DropdownMenuItem<String>(
                value: currency,
                child: Row(
                  children: [
                    Text(currencyFlags[currency] ?? ''),
                    const SizedBox(width: 8),
                    Text(currency),
                  ],
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = isDarkMode ? ThemeData.dark() : ThemeData.light();

    return Theme(
      data: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: isDarkMode ? Colors.tealAccent : Colors.teal,
          secondary: isDarkMode ? Colors.tealAccent[200] : Colors.teal[700],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Currency Converter'),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Currency selection cards
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        buildCurrencyDropdown('From', baseCurrency, (value) {
                          if (value != null) {
                            setState(() {
                              baseCurrency = value;
                            });
                          }
                        }),
                        const SizedBox(height: 16),
                        IconButton(
                          icon: Container(
                            decoration: BoxDecoration(
                              color: isDarkMode ? Colors.tealAccent : Colors.teal,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(Icons.swap_vert, color: Colors.white),
                          ),
                          onPressed: swapCurrencies,
                        ),
                        const SizedBox(height: 8),
                        buildCurrencyDropdown('To', targetCurrency, (value) {
                          if (value != null) {
                            setState(() {
                              targetCurrency = value;
                            });
                          }
                        }),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Amount input
                TextField(
                  controller: amountController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Amount in $baseCurrency',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () => amountController.clear(),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Convert button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: getExchangeRate,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: isLoading
                        ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                        : const Text(
                      'CONVERT',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Results display
                if (errorMessage.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.error, color: Colors.red),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            errorMessage,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),

                if (exchangeRate != null && !isLoading)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? Colors.teal.withOpacity(0.2)
                          : Colors.teal[50],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: isDarkMode
                            ? Colors.tealAccent
                            : Colors.teal,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Exchange Rate',
                          style: TextStyle(
                            fontSize: 16,
                            color: isDarkMode ? Colors.white70 : Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '1 $baseCurrency = ${exchangeRate!.toStringAsFixed(4)} $targetCurrency',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(height: 32),
                        Text(
                          'Converted Amount',
                          style: TextStyle(
                            fontSize: 16,
                            color: isDarkMode ? Colors.white70 : Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${amountController.text.isEmpty ? "1" : amountController.text} $baseCurrency =',
                          style: TextStyle(
                            fontSize: 18,
                            color: isDarkMode ? Colors.white70 : Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${convertedAmount?.toStringAsFixed(2) ?? "0"} $targetCurrency',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.tealAccent : Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),

                // Recent conversions list (placeholder for future enhancement)
                if (exchangeRate != null && !isLoading)
                  const SizedBox(height: 24),
                if (exchangeRate != null && !isLoading)
                  const Text(
                    'Tap the swap button to reverse conversion',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              amountController.clear();
              exchangeRate = null;
              convertedAmount = null;
              errorMessage = '';
            });
          },
          child: const Icon(Icons.refresh),
          tooltip: 'Reset',
        ),
      ),
    );
  }
}