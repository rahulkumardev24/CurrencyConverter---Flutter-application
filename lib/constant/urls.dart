class AppConstant {
  static const APIKEY = "d7071495860c42308276a120f637a757";

  static const baseUrl = "https://api.currencyfreaks.com/v2.0";
  static const latestRates = "$baseUrl/rates/latest?apikey=$APIKEY";
  static const supportedCurrencies = "$baseUrl/supported-currencies";
  static const currencySymbols = "$baseUrl/currency-symbols";

  /// Get latest currency rates for specific symbols only
  static String getRatesBySymbols(List<String> symbols) {
    final joined = symbols.join(',');
    return "$latestRates&symbols=$joined";
  }

  /// Get latest currency rates for specific base and selected symbols
  static String getRatesWithSymbolsAndBase(List<String> symbols, String base) {
    final joined = symbols.join(',');
    return "$latestRates&symbols=$joined&base=$base";
  }

  /// Get latest currency rates for all currencies by specific base
  static String getRatesWithBase(String base) {
    return "$latestRates&base=$base";
  }

  /// Convert currency amount from one to another
  static String convertCurrency({
    required String from,
    required String to,
    required double amount,
  }) {
    return "$baseUrl/convert/latest?apikey=$APIKEY&from=$from&to=$to&amount=$amount";
  }

}
