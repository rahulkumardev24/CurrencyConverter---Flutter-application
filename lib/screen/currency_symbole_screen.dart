import 'package:currency_converter/service/currency_service.dart';
import 'package:currency_converter/utils/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../constant/colors.dart';
import '../model/supported_currencies.dart';

class CurrencySymbolScreen extends StatefulWidget {
  const CurrencySymbolScreen({super.key});

  @override
  State<CurrencySymbolScreen> createState() => _CurrencySymbolScreenState();
}

class _CurrencySymbolScreenState extends State<CurrencySymbolScreen>
    with SingleTickerProviderStateMixin {
  final CurrencyService currencyService = CurrencyService();
  Future<SupportedCurrenciesResponse?>? _supportedCurrenciesResponse;
  late AnimationController animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<Color?> _colorAnimation;
  TextEditingController searchController = TextEditingController();
  List<MapEntry<String, dynamic>> filteredCurrencies = [];

  @override
  void initState() {
    super.initState();
    _supportedCurrenciesResponse =
        currencyService.supportCurrency()..then((value) {
          if (value != null) {
            setState(() {
              filteredCurrencies =
                  value.supportedCurrenciesMap.entries.toList();
            });
          }
        });

    /// --- Animation initialize --- ///
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );
    _colorAnimation = ColorTween(
      begin: Colors.blue.shade100,
      end: Colors.blue.shade50,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    searchController.dispose();
    super.dispose();
  }

  void filterCurrencies(String query) {
    if (_supportedCurrenciesResponse == null) return;

    _supportedCurrenciesResponse!.then((response) {
      if (response == null) return;

      setState(() {
        filteredCurrencies =
            response.supportedCurrenciesMap.entries
                .where(
                  (entry) =>
                      entry.value.currencyName.toLowerCase().contains(
                        query.toLowerCase(),
                      ) ||
                      entry.value.currencyCode.toLowerCase().contains(
                        query.toLowerCase(),
                      ) ||
                      entry.value.countryName.toLowerCase().contains(
                        query.toLowerCase(),
                      ),
                )
                .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  _colorAnimation.value ?? Colors.blue.shade50,
                  Colors.white,
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  /// --- Appbar --- ///
                  ScaleTransition(
                    scale: _scaleAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              "Currency Details",
                              style: myTextStyle24(
                                fontWeight: FontWeight.bold,
                                fontColor: AppColors.primary,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Explore all supported currencies",
                              style: myTextStyle15(
                                fontColor: Colors.grey.shade600,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Hero(
                              tag: 'search-bar',
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(30),
                                child: TextField(
                                  controller: searchController,
                                  onChanged: filterCurrencies,
                                  decoration: InputDecoration(
                                    hintText: "Search currencies...",
                                    hintStyle: myTextStyle12(
                                      fontWeight: FontWeight.bold,
                                      fontColor: Colors.black45,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.search_rounded,
                                    ),
                                    suffixIcon:
                                        searchController.text.isNotEmpty
                                            ? IconButton(
                                              icon: const Icon(Icons.clear),
                                              onPressed: () {
                                                searchController.clear();
                                                filterCurrencies('');
                                              },
                                            )
                                            : null,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder<SupportedCurrenciesResponse?>(
                      future: _supportedCurrenciesResponse,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircularProgressIndicator(),
                                const SizedBox(height: 16),
                                Text(
                                  "Loading currencies...",
                                  style: myTextStyle15(
                                    fontColor: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.error_outline,
                                  size: 48,
                                  color: Colors.red,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  "Failed to load currencies",
                                  style: myTextStyle15(
                                    fontColor: Colors.grey.shade800,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Please check your connection and try again",
                                  style: myTextStyle15(
                                    fontColor: Colors.grey.shade600,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _supportedCurrenciesResponse =
                                          currencyService.supportCurrency();
                                    });
                                  },
                                  child: Text(
                                    "Retry",
                                    style: myTextStyle15(
                                      fontColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        /// --- if data --- ///
                        else if (snapshot.hasData) {
                          /// --- search is empty --- ///
                          if (filteredCurrencies.isEmpty) {
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_exchange_rounded,
                                    size: 48,
                                    color: Colors.grey.shade400,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    "No currencies found",
                                    style: myTextStyle15(
                                      fontColor: Colors.grey.shade800,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Try a different search term",
                                    style: myTextStyle15(
                                      fontColor: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return AnimationLimiter(
                            child: ListView.builder(
                              padding: const EdgeInsets.only(bottom: 20),
                              itemCount: filteredCurrencies.length,
                              itemBuilder: (context, index) {
                                final entry = filteredCurrencies[index];
                                final currency = entry.value;
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  duration: const Duration(milliseconds: 500),
                                  child: SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 8,
                                        ),
                                        child: Card(
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12),
                                            child: Row(
                                              children: [
                                                /// Flag /Icon
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.blue.shade50,
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.teal.shade100,
                                                        Colors.teal.shade50,
                                                      ],
                                                    ),
                                                  ),

                                                  /// --- country Icon --- ///
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          8.0,
                                                        ),
                                                    child: Center(
                                                      child:
                                                          currency
                                                                  .icon
                                                                  .isNotEmpty
                                                              ? Image.network(
                                                                currency.icon,
                                                                width: 40,
                                                                height: 40,
                                                                errorBuilder:
                                                                    (
                                                                      _,
                                                                      __,
                                                                      ___,
                                                                    ) => Icon(
                                                                      Icons
                                                                          .currency_exchange,
                                                                      size: 20,
                                                                      color:
                                                                          AppColors
                                                                              .primary,
                                                                    ),
                                                              )
                                                              : Icon(
                                                                Icons
                                                                    .currency_exchange,
                                                                size: 20,
                                                                color:
                                                                    AppColors
                                                                        .primary,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 16),
                                                // Currency Details
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        currency.currencyName,
                                                        style: myTextStyle15(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        '${currency.currencyCode} • ${currency.countryName}',
                                                        style: myTextStyle15(
                                                          fontColor:
                                                              Colors
                                                                  .grey
                                                                  .shade600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // Status
                                                Container(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 4,
                                                      ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green.shade50,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    border: Border.all(
                                                      color:
                                                          Colors.green.shade200,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    currency.status,
                                                    style: myTextStyle12(
                                                      fontColor:
                                                          Colors.green.shade800,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        } else {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.warning_rounded,
                                  size: 48,
                                  color: Colors.orange.shade400,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  "No currency data available",
                                  style: myTextStyle15(
                                    fontColor: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
