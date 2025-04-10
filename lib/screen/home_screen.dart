import 'dart:ui';

import 'package:currency_converter/utils/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:confetti/confetti.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/colors.dart';
import '../service/currency_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final CurrencyService _currencyService = CurrencyService();
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  final ConfettiController _confettiController = ConfettiController(
    duration: const Duration(seconds: 1),
  );
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  String _baseCurrency = 'USD';
  String _searchQuery = '';
  Map<String, double>? _rates;
  bool _isLoading = false;
  bool _isError = false;
  String _errorMessage = '';
  bool _showSearchBar = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.3, 1, curve: Curves.easeInOut),
      ),
    );
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _fetchExchangeRates();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _searchController.dispose();
    _searchFocusNode.dispose();
    _confettiController.dispose();
    super.dispose();
  }

  /// Api
  Future<void> _fetchExchangeRates() async {
    setState(() {
      _isLoading = true;
      _isError = false;
    });

    try {
      final result = await _currencyService.getAllExchangeRates(
        baseCurrency: _baseCurrency,
      );

      setState(() {
        _rates = result.rates;
        _isLoading = false;
      });
      _confettiController.play();
    } catch (e) {
      setState(() {
        _isError = true;
        _errorMessage = e.toString().replaceAll('Exception: ', '');
        _isLoading = false;
      });
    }
  }

  void _swapCurrencies(String newCurrency) {
    setState(() => _baseCurrency = newCurrency);
    _animationController.reset();
    _animationController.forward();
    _fetchExchangeRates();
  }

  /// for search
  List<String> get _filteredCurrencies {
    return currencies
        .where(
          (currency) =>
              currency != _baseCurrency &&
              (currency.toLowerCase().contains(_searchQuery.toLowerCase()) ||
                  currencyNames[currency]!.toLowerCase().contains(
                    _searchQuery.toLowerCase(),
                  )),
        )
        .toList();
  }

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
    'AED',
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
    'CUP',
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
    'ILS',
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
    'THB',
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

  final Map<String, String> currencyNames = {
    'USD': 'United States Dollar',
    'EUR': 'Euro',
    'GBP': 'British Pound Sterling',
    'INR': 'Indian Rupee',
    'JPY': 'Japanese Yen',
    'AUD': 'Australian Dollar',
    'CAD': 'Canadian Dollar',
    'CNY': 'Chinese Yuan',
    'CHF': 'Swiss Franc',
    'SGD': 'Singapore Dollar',
    'AED': 'United Arab Emirates Dirham',
    'AFN': 'Afghan Afghani',
    'ALL': 'Albanian Lek',
    'AMD': 'Armenian Dram',
    'ANG': 'Netherlands Antillean Guilder',
    'AOA': 'Angolan Kwanza',
    'ARS': 'Argentine Peso',
    'AWG': 'Aruban Florin',
    'AZN': 'Azerbaijani Manat',
    'BAM': 'Bosnia-Herzegovina Convertible Mark',
    'BBD': 'Barbadian Dollar',
    'BDT': 'Bangladeshi Taka',
    'BGN': 'Bulgarian Lev',
    'BHD': 'Bahraini Dinar',
    'BIF': 'Burundian Franc',
    'BMD': 'Bermudan Dollar',
    'BND': 'Brunei Dollar',
    'BOB': 'Bolivian Boliviano',
    'BRL': 'Brazilian Real',
    'BSD': 'Bahamian Dollar',
    'BTN': 'Bhutanese Ngultrum',
    'BWP': 'Botswanan Pula',
    'BYN': 'Belarusian Ruble',
    'BZD': 'Belize Dollar',
    'CDF': 'Congolese Franc',
    'CLP': 'Chilean Peso',
    'COP': 'Colombian Peso',
    'CRC': 'Costa Rican Colón',
    'CUP': 'Cuban Peso',
    'CVE': 'Cape Verdean Escudo',
    'CZK': 'Czech Republic Koruna',
    'DJF': 'Djiboutian Franc',
    'DKK': 'Danish Krone',
    'DOP': 'Dominican Peso',
    'DZD': 'Algerian Dinar',
    'EGP': 'Egyptian Pound',
    'ERN': 'Eritrean Nakfa',
    'ETB': 'Ethiopian Birr',
    'FJD': 'Fijian Dollar',
    'FKP': 'Falkland Islands Pound',
    'GEL': 'Georgian Lari',
    'GHS': 'Ghanaian Cedi',
    'GIP': 'Gibraltar Pound',
    'GMD': 'Gambian Dalasi',
    'GNF': 'Guinean Franc',
    'GTQ': 'Guatemalan Quetzal',
    'GYD': 'Guyanaese Dollar',
    'HKD': 'Hong Kong Dollar',
    'HNL': 'Honduran Lempira',
    'HRK': 'Croatian Kuna',
    'HTG': 'Haitian Gourde',
    'HUF': 'Hungarian Forint',
    'IDR': 'Indonesian Rupiah',
    'ILS': 'Israeli New Sheqel',
    'IQD': 'Iraqi Dinar',
    'IRR': 'Iranian Rial',
    'ISK': 'Icelandic Króna',
    'JMD': 'Jamaican Dollar',
    'JOD': 'Jordanian Dinar',
    'KES': 'Kenyan Shilling',
    'KGS': 'Kyrgystani Som',
    'KHR': 'Cambodian Riel',
    'KMF': 'Comorian Franc',
    'KPW': 'North Korean Won',
    'KRW': 'South Korean Won',
    'KWD': 'Kuwaiti Dinar',
    'KYD': 'Cayman Islands Dollar',
    'KZT': 'Kazakhstani Tenge',
    'LAK': 'Laotian Kip',
    'LBP': 'Lebanese Pound',
    'LKR': 'Sri Lankan Rupee',
    'LRD': 'Liberian Dollar',
    'LSL': 'Lesotho Loti',
    'LYD': 'Libyan Dinar',
    'MAD': 'Moroccan Dirham',
    'MDL': 'Moldovan Leu',
    'MGA': 'Malagasy Ariary',
    'MKD': 'Macedonian Denar',
    'MMK': 'Myanma Kyat',
    'MNT': 'Mongolian Tugrik',
    'MOP': 'Macanese Pataca',
    'MRU': 'Mauritanian Ouguiya',
    'MUR': 'Mauritian Rupee',
    'MVR': 'Maldivian Rufiyaa',
    'MWK': 'Malawian Kwacha',
    'MXN': 'Mexican Peso',
    'MYR': 'Malaysian Ringgit',
    'MZN': 'Mozambican Metical',
    'NAD': 'Namibian Dollar',
    'NGN': 'Nigerian Naira',
    'NIO': 'Nicaraguan Córdoba',
    'NOK': 'Norwegian Krone',
    'NPR': 'Nepalese Rupee',
    'NZD': 'New Zealand Dollar',
    'OMR': 'Omani Rial',
    'PAB': 'Panamanian Balboa',
    'PEN': 'Peruvian Nuevo Sol',
    'PGK': 'Papua New Guinean Kina',
    'PHP': 'Philippine Peso',
    'PKR': 'Pakistani Rupee',
    'PLN': 'Polish Zloty',
    'PYG': 'Paraguayan Guarani',
    'QAR': 'Qatari Rial',
    'RON': 'Romanian Leu',
    'RSD': 'Serbian Dinar',
    'RUB': 'Russian Ruble',
    'RWF': 'Rwandan Franc',
    'SAR': 'Saudi Riyal',
    'SBD': 'Solomon Islands Dollar',
    'SCR': 'Seychellois Rupee',
    'SDG': 'Sudanese Pound',
    'SEK': 'Swedish Krona',
    'SHP': 'Saint Helena Pound',
    'SLL': 'Sierra Leonean Leone',
    'SOS': 'Somali Shilling',
    'SRD': 'Surinamese Dollar',
    'STN': 'São Tomé and Príncipe Dobra',
    'SYP': 'Syrian Pound',
    'SZL': 'Swazi Lilangeni',
    'THB': 'Thai Baht',
    'TJS': 'Tajikistani Somoni',
    'TMT': 'Turkmenistani Manat',
    'TND': 'Tunisian Dinar',
    'TOP': 'Tongan Paʻanga',
    'TRY': 'Turkish Lira',
    'TTD': 'Trinidad and Tobago Dollar',
    'TWD': 'New Taiwan Dollar',
    'TZS': 'Tanzanian Shilling',
    'UAH': 'Ukrainian Hryvnia',
    'UGX': 'Ugandan Shilling',
    'UYU': 'Uruguayan Peso',
    'UZS': 'Uzbekistan Som',
    'VES': 'Venezuelan Bolívar',
    'VND': 'Vietnamese Dong',
    'VUV': 'Vanuatu Vatu',
    'WST': 'Samoan Tala',
    'XAF': 'CFA Franc BEAC',
    'XCD': 'East Caribbean Dollar',
    'XOF': 'CFA Franc BCEAO',
    'XPF': 'CFP Franc',
    'YER': 'Yemeni Rial',
    'ZAR': 'South African Rand',
    'ZMW': 'Zambian Kwacha',
    'ZWL': 'Zimbabwean Dollar',
  };

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Stack(
          children: [
            /// Gradient Background
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue.shade50, Colors.white],
                ),
              ),
            ),

            /// Main Content
            SafeArea(
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Column(
                    children: [
                      /// App Bar with Glass morphism Effect
                      /// Appbar
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.primary,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AppBar(
                            title: Text(
                              'Exchange Rates',
                              style: myTextStyle18(fontColor: Colors.white , fontWeight: FontWeight.bold),
                            ),
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            actions: [
                              /// Search Icon
                              IconButton(
                                icon: Icon(
                                  _showSearchBar ? Icons.close : Icons.search,
                                  size: 27,
                                  color: Colors.white54,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _showSearchBar = !_showSearchBar;
                                    if (!_showSearchBar) {
                                      _searchController.clear();
                                      _searchQuery = '';
                                    } else {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                            FocusScope.of(
                                              context,
                                            ).requestFocus(_searchFocusNode);
                                          });
                                    }
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.refresh,
                                  color: Colors.white54,
                                  size: 27,
                                ),
                                onPressed: () {
                                  _fetchExchangeRates();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8),

                      /// Base Currency Selector with Glass morphism
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.secondary.withAlpha(60),
                          ),
                          child: ClipRRect(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Base Currency',
                                      style: myTextStyle18(
                                        fontColor: Colors.blue.shade800,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    /// Live rate
                                    if (!_isLoading && _rates != null)
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          border: Border.all(color: Colors.red),
                                          color: Colors.red.shade50,
                                        ),
                                        child: Text(
                                          'Live Rates',
                                          style: myTextStyle12(
                                            fontColor: Colors.red.shade800,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 12),

                                /// Drop down
                                DropdownButtonFormField<String>(
                                  value: _baseCurrency,
                                  menuMaxHeight: 400,
                                  isExpanded: true,
                                  dropdownColor: Colors.white,
                                  isDense: false,
                                  borderRadius: BorderRadius.circular(12),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  items:
                                      currencies.map((currency) {
                                        return DropdownMenuItem<String>(
                                          value: currency,
                                          child: Row(
                                            children: [
                                              Text(
                                                currencyFlags[currency] ?? '🌐',
                                                style: myTextStyle24(),
                                              ),
                                              const SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    currency,
                                                    style: myTextStyle18(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontColor: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    currencyNames[currency]!,
                                                    style: myTextStyle12(
                                                      fontColor:
                                                          Colors.grey.shade600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }).toList(),
                                  onChanged: (value) {
                                    if (value != null) {
                                      HapticFeedback.mediumImpact();
                                      _swapCurrencies(value);
                                    }
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.7),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// Search Bar
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child:
                            _showSearchBar
                                ? Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.secondary.withAlpha(60),
                                      border: Border.all(
                                        color: AppColors.secondary,
                                        width: 1,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: TextField(
                                        controller: _searchController,
                                        focusNode: _searchFocusNode,
                                        decoration: InputDecoration(
                                          hintText: 'Search currencies...',
                                          hintStyle: myTextStyle15(
                                            fontColor: Colors.grey.shade600,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.grey.shade600,
                                          ),
                                          suffixIcon:
                                              _searchQuery.isNotEmpty
                                                  ? IconButton(
                                                    icon: Icon(
                                                      Icons.clear,
                                                      color:
                                                          Colors.grey.shade600,
                                                    ),
                                                    onPressed: () {
                                                      _searchController.clear();
                                                      _searchQuery = '';
                                                    },
                                                  )
                                                  : null,
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                )
                                : const SizedBox.shrink(),
                      ),

                      /// Status Indicators
                      if (_isLoading)
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Shimmer.fromColors(
                                  baseColor: Colors.grey.shade300,
                                  highlightColor: Colors.grey.shade100,
                                  child: Container(
                                    width: 200,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                CircularProgressIndicator.adaptive(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      /// if error found
                      else if (_isError)
                        Expanded(
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red.shade100.withAlpha(90),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    size: 48,
                                    color: Colors.red.shade400,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    _errorMessage,
                                    textAlign: TextAlign.center,
                                    style: myTextStyle15(
                                      fontColor: Colors.red.shade400,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade400,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: _fetchExchangeRates,
                                    child: Text(
                                      'Retry',
                                      style: myTextStyle15(
                                        fontColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      else if (_rates == null && !_isLoading && !_isError)
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_exchange,
                                  size: 64,
                                  color: Colors.teal,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Select a base currency to see rates',
                                  style: myTextStyle18(
                                    fontColor: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      else
                        /// Re fresh indicator
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: _fetchExchangeRates,
                            color: AppColors.primary,
                            backgroundColor: Colors.white,
                            child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 80,
                              ),
                              itemCount: _filteredCurrencies.length,
                              itemBuilder: (context, index) {
                                final currency = _filteredCurrencies[index];
                                final rate = _rates?[currency] ?? 0.0;
                                return _buildCurrencyCard(currency, rate);
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ---  Widgets --- ///
  Widget _buildCurrencyCard(String currency, double rate) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.grey.shade50],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,

           blurRadius: 1,
            offset: const Offset(2, 2),
          ),

        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            HapticFeedback.lightImpact();
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.teal.shade100, Colors.teal.shade50],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2,

                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      currencyFlags[currency] ?? '🌐',
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        currency,
                        style: myTextStyle18(
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.black87,
                        ),
                      ),
                      Text(
                        currencyNames[currency]!,
                        style: myTextStyle12(fontColor: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      rate.toStringAsFixed(4),
                      style: myTextStyle18(
                       fontWeight: FontWeight.bold,
                        fontColor: Colors.teal,
                      ),
                    ),
                    Text(
                      '1 $_baseCurrency',
                      style: myTextStyle12(
                        fontColor: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
