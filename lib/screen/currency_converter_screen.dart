import 'package:currency_converter/constant/colors.dart';
import 'package:currency_converter/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../model/currency_converter_model.dart';
import '../service/currency_service.dart';

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

  final TextEditingController amountController = TextEditingController();
  final CurrencyService _currencyService = CurrencyService();

  List<String> currencies = [
    'USD',
    'EUR',
    'GBP',
    'INR',
    'JPY',
    'AUD',
    'CAD',
    'CNY',
    'CHF',
    'SGD',
    'AED'
        'AFN',
    'ALL',
    'AMD',
    'ANG',
    'AOA',
    'ARS',
    'AWG',
    'AZN',
    'BAM',
    'BBD',
    'BDT',
    'BGN',
    'BHD',
    'BIF',
    'BMD',
    'BND',
    'BOB',
    'BRL',
    'BSD',
    'BTN',
    'BWP',
    'BYN',
    'BZD',
    'CDF',
    'CLP',
    'COP',
    'CRC',
    'CUP'
        'CVE',
    'CZK',
    'DJF',
    'DKK',
    'DOP',
    'DZD',
    'EGP',
    'ERN',
    'ETB',
    'FJD',
    'FKP',
    'GEL',
    'GHS',
    'GIP',
    'GMD',
    'GNF',
    'GTQ',
    'GYD',
    'HKD',
    'HNL',
    'HRK',
    'HTG',
    'HUF',
    'IDR',
    'IQD',
    'IRR',
    'ISK',
    'JMD',
    'JOD',
    'KES',
    'KGS',
    'KHR',
    'KMF',
    'KPW',
    'KRW',
    'KWD',
    'KYD',
    'KZT',
    'LAK',
    'LBP',
    'LKR',
    'LRD',
    'LSL',
    'LYD',
    'MAD',
    'MDL',
    'MGA',
    'MKD',
    'MMK',
    'MNT',
    'MOP',
    'MRU',
    'MUR',
    'MVR',
    'MWK',
    'MXN',
    'MYR',
    'MZN',
    'NAD',
    'NGN',
    'NIO',
    'NOK',
    'NPR',
    'NZD',
    'OMR',
    'PAB',
    'PEN',
    'PGK',
    'PHP',
    'PKR',
    'PLN',
    'PYG',
    'QAR',
    'RON',
    'RSD',
    'RUB',
    'RWF',
    'SAR',
    'SBD',
    'SCR',
    'SDG',
    'SEK',
    'SHP',
    'SLL',
    'SOS',
    'SRD',
    'STN',
    'SYP',
    'SZL',
    'THB'
        'TJS',
    'TMT',
    'TND',
    'TOP',
    'TRY',
    'TTD',
    'TWD',
    'TZS',
    'UAH',
    'UGX',
    'UYU',
    'UZS',
    'VES',
    'VND',
    'VUV',
    'WST',
    'XAF',
    'XCD',
    'XOF',
    'XPF',
    'YER',
    'ZAR',
    'ZMW',
    'ZWL',
  ];

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
    'AED': '🇦🇪',
    'AFN': '🇦🇫',
    'ALL': '🇦🇱',
    'AMD': '🇦🇲',
    'ANG': '🇨🇼',
    'AOA': '🇦🇴',
    'ARS': '🇦🇷',
    'AWG': '🇦🇼',
    'AZN': '🇦🇿',
    'BAM': '🇧🇦',
    'BBD': '🇧🇧',
    'BDT': '🇧🇩',
    'BGN': '🇧🇬',
    'BHD': '🇧🇭',
    'BIF': '🇧🇮',
    'BMD': '🇧🇲',
    'BND': '🇧🇳',
    'BOB': '🇧🇴',
    'BRL': '🇧🇷',
    'BSD': '🇧🇸',
    'BTN': '🇧🇹',
    'BWP': '🇧🇼',
    'BYN': '🇧🇾',
    'BZD': '🇧🇿',
    'CDF': '🇨🇩',
    'CLP': '🇨🇱',
    'COP': '🇨🇴',
    'CRC': '🇨🇷',
    'CUP': '🇨🇺',
    'CVE': '🇨🇻',
    'CZK': '🇨🇿',
    'DJF': '🇩🇯',
    'DKK': '🇩🇰',
    'DOP': '🇩🇴',
    'DZD': '🇩🇿',
    'EGP': '🇪🇬',
    'ERN': '🇪🇷',
    'ETB': '🇪🇹',
    'FJD': '🇫🇯',
    'FKP': '🇫🇰',
    'GEL': '🇬🇪',
    'GHS': '🇬🇭',
    'GIP': '🇬🇮',
    'GMD': '🇬🇲',
    'GNF': '🇬🇳',
    'GTQ': '🇬🇹',
    'GYD': '🇬🇾',
    'HKD': '🇭🇰',
    'HNL': '🇭🇳',
    'HRK': '🇭🇷',
    'HTG': '🇭🇹',
    'HUF': '🇭🇺',
    'IDR': '🇮🇩',
    'ILS': '🇮🇱',
    'IQD': '🇮🇶',
    'IRR': '🇮🇷',
    'ISK': '🇮🇸',
    'JMD': '🇯🇲',
    'JOD': '🇯🇴',
    'KES': '🇰🇪',
    'KGS': '🇰🇬',
    'KHR': '🇰🇭',
    'KMF': '🇰🇲',
    'KPW': '🇰🇵',
    'KRW': '🇰🇷',
    'KWD': '🇰🇼',
    'KYD': '🇰🇾',
    'KZT': '🇰🇿',
    'LAK': '🇱🇦',
    'LBP': '🇱🇧',
    'LKR': '🇱🇰',
    'LRD': '🇱🇷',
    'LSL': '🇱🇸',
    'LYD': '🇱🇾',
    'MAD': '🇲🇦',
    'MDL': '🇲🇩',
    'MGA': '🇲🇬',
    'MKD': '🇲🇰',
    'MMK': '🇲🇲',
    'MNT': '🇲🇳',
    'MOP': '🇲🇴',
    'MRU': '🇲🇷',
    'MUR': '🇲🇺',
    'MVR': '🇲🇻',
    'MWK': '🇲🇼',
    'MXN': '🇲🇽',
    'MYR': '🇲🇾',
    'MZN': '🇲🇿',
    'NAD': '🇳🇦',
    'NGN': '🇳🇬',
    'NIO': '🇳🇮',
    'NOK': '🇳🇴',
    'NPR': '🇳🇵',
    'NZD': '🇳🇿',
    'OMR': '🇴🇲',
    'PAB': '🇵🇦',
    'PEN': '🇵🇪',
    'PGK': '🇵🇬',
    'PHP': '🇵🇭',
    'PKR': '🇵🇰',
    'PLN': '🇵🇱',
    'PYG': '🇵🇾',
    'QAR': '🇶🇦',
    'RON': '🇷🇴',
    'RSD': '🇷🇸',
    'RUB': '🇷🇺',
    'RWF': '🇷🇼',
    'SAR': '🇸🇦',
    'SBD': '🇸🇧',
    'SCR': '🇸🇨',
    'SDG': '🇸🇩',
    'SEK': '🇸🇪',
    'SHP': '🇸🇭',
    'SLL': '🇸🇱',
    'SOS': '🇸🇴',
    'SRD': '🇸🇷',
    'STN': '🇸🇹',
    'SYP': '🇸🇾',
    'SZL': '🇸🇿',
    'THB': '🇹🇭',
    'TJS': '🇹🇯',
    'TMT': '🇹🇲',
    'TND': '🇹🇳',
    'TOP': '🇹🇴',
    'TRY': '🇹🇷',
    'TTD': '🇹🇹',
    'TWD': '🇹🇼',
    'TZS': '🇹🇿',
    'UAH': '🇺🇦',
    'UGX': '🇺🇬',
    'UYU': '🇺🇾',
    'UZS': '🇺🇿',
    'VES': '🇻🇪',
    'VND': '🇻🇳',
    'VUV': '🇻🇺',
    'WST': '🇼🇸',
    'XAF': '🇨🇲',
    'XCD': '🇦🇬',
    'XOF': '🇧🇯',
    'XPF': '🇵🇫',
    'YER': '🇾🇪',
    'ZAR': '🇿🇦',
    'ZMW': '🇿🇲',
    'ZWL': '🇿🇼',
  };

  Future<void> getExchangeRate() async {
    FocusScope.of(context).unfocus();
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
    try {
      final CurrencyRate currencyRate = await _currencyService.getExchangeRate(
        baseCurrency: baseCurrency,
        targetCurrency: targetCurrency,
      );
      setState(() {
        exchangeRate = currencyRate.rates[targetCurrency];
        double amount = double.tryParse(amountController.text) ?? 1.0;
        convertedAmount = exchangeRate! * amount;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString().replaceAll('Exception: ', '');
        isLoading = false;
      });
    }
  }

  /// create function for swap the currency
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// --- Body ---- ///
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primary,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AppBar(
                      leading: IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios_rounded) , color: Colors.white70, ),
                      title: Text(
                        'Currency Converter',
                        style: myTextStyle18(fontColor: Colors.white , fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              amountController.clear();
                              exchangeRate = null;
                              convertedAmount = null;
                              errorMessage = '';
                            });
                          },
                          icon: Icon(
                            Icons.restart_alt_rounded,
                            size: 27,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),

                /// Currency selection cards
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        /// from drop down
                        buildCurrencyDropdown('From', baseCurrency, (value) {
                          if (value != null) {
                            setState(() {
                              baseCurrency = value;
                            });
                          }
                        }),
                        const SizedBox(height: 4),

                        /// --- Swip button --- ///
                        IconButton(
                          icon: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.swap_vert,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: swapCurrencies,
                        ),
                        const SizedBox(height: 4),

                        /// to drop down
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("Enter Amount", style: myTextStyle18())],
                ),
                SizedBox(height: 6),

                ///  Amount input
                TextField(
                  controller: amountController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelStyle: myTextStyle18(),
                    filled: true,
                    fillColor: AppColors.light.withAlpha(60),
                    hintText: 'Enter Amount in $baseCurrency',
                    hintStyle: myTextStyle15(fontColor: Colors.black38),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.light),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.light),
                      borderRadius: BorderRadius.circular(100),
                    ),

                    prefixIcon: const Icon(Icons.monetization_on),

                    /// clear button
                    suffixIcon: IconButton(
                      icon:
                          amountController.text.isNotEmpty
                              ? Icon(Icons.clear)
                              : SizedBox(),
                      onPressed: () => amountController.clear(),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                /// Convert button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: getExchangeRate,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: AppColors.secondary,
                      ),
                      child:
                          isLoading
                              ? const SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                              : Text(
                                'CONVERT',
                                style: myTextStyle18(fontColor: Colors.white),
                              ),
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
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    transitionBuilder: (
                      Widget child,
                      Animation<double> animation,
                    ) {
                      return FadeTransition(
                        opacity: animation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 0.2),
                            end: Offset.zero,
                          ).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeOutQuart,
                            ),
                          ),
                          child: child,
                        ),
                      );
                    },
                    child:
                        exchangeRate != null
                            ? Container(
                              key: ValueKey<double>(convertedAmount ?? 0),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppColors.secondary.withAlpha(30),
                                    AppColors.primary.withAlpha(60),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: AppColors.primary.withAlpha(30),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  // Exchange Rate Section
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Exchange Rate',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.info_outline,
                                          size: 20,
                                          color: Colors.grey[600],
                                        ),
                                        onPressed: () {
                                          // Add info dialog or tooltip
                                        },
                                      ),
                                    ],
                                  ),

                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 6,
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.primary.withAlpha(30),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                        children: [
                                          TextSpan(text: '1 '),
                                          TextSpan(
                                            text: baseCurrency,
                                            style: TextStyle(
                                              color: AppColors.primary,
                                            ),
                                          ),
                                          const TextSpan(text: ' = '),
                                          TextSpan(
                                            text: exchangeRate!.toStringAsFixed(
                                              4,
                                            ),
                                            style: const TextStyle(
                                              color: Colors.teal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' $targetCurrency',
                                            style: TextStyle(
                                              color: AppColors.primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  /// Animated divider
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 6,
                                    ),
                                    child: TweenAnimationBuilder<double>(
                                      tween: Tween(begin: 0.0, end: 1.0),
                                      duration: const Duration(
                                        milliseconds: 600,
                                      ),
                                      curve: Curves.easeOut,
                                      builder: (context, value, child) {
                                        return LinearProgressIndicator(
                                          value: value,
                                          backgroundColor: Colors.grey[200],
                                          color: AppColors.primary.withAlpha(128),
                                          minHeight: 2,
                                        );
                                      },
                                    ),
                                  ),

                                  // Converted Amount Section
                                  Text(
                                    'Converted Amount',
                                    style: myTextStyle15(
                                      fontColor: Colors.black54,
                                    ),
                                  ),
                                  const SizedBox(height: 12),

                                  // Original Amount
                                  FadeTransition(
                                    opacity: AlwaysStoppedAnimation(
                                      amountController.text.isEmpty ? 0.6 : 1.0,
                                    ),
                                    child: Text(
                                      '${amountController.text.isEmpty ? "1" : amountController.text} $baseCurrency',
                                      style: myTextStyle18(
                                        fontColor: Colors.black54,
                                      ),
                                    ),
                                  ),

                                  /// Conversion Arrow
                                  Icon(
                                    Icons.arrow_downward,
                                    size: 24,
                                    color: AppColors.primary.withAlpha(179),
                                  ),

                                  /// Result Amount with scaling animation
                                  TweenAnimationBuilder<double>(
                                    tween: Tween(begin: 0.95, end: 1.0),
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeOutBack,
                                    builder: (context, value, child) {
                                      return Transform.scale(
                                        scale: value,
                                        child: child,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade400,
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 2),
                                        child: Text(
                                          '${convertedAmount?.toStringAsFixed(2) ?? "0.00"} $targetCurrency',
                                          style: myTextStyle24(
                                            fontWeight: FontWeight.bold,
                                            fontColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  /// Last updated time
                                  const SizedBox(height: 6),
                                  Text(
                                    'Updated just now',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "primary",
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                ],
                              ),
                            )
                            : const SizedBox.shrink(),
                  ),

                // Recent conversions list (placeholder for future enhancement)
                if (exchangeRate != null && !isLoading)
                  const SizedBox(height: 12),
                if (exchangeRate != null && !isLoading)
                  const Text(
                    'Tap the swap button to reverse conversion',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// --- Widgets---- ///
  Widget buildCurrencyDropdown(
    String label,
    String value,
    ValueChanged<String?> onChanged,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.light.withAlpha(100),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: myTextStyle15(fontColor: Colors.black45)),
          DropdownButton<String>(
            value: value,
            menuMaxHeight: 400,
            borderRadius: BorderRadius.circular(12),
            isExpanded: true,
            underline: const SizedBox(),
            icon: Icon(Icons.arrow_drop_down, color: Colors.black54),
            style: myTextStyle18(),
            items:
                currencies.map((String currency) {
                  return DropdownMenuItem<String>(
                    value: currency,
                    child: Row(
                      children: [
                        Text(
                          currencyFlags[currency] ?? '',
                          style: myTextStyle18(),
                        ),
                        const SizedBox(width: 8),
                        Text(currency, style: myTextStyle18()),
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
}
