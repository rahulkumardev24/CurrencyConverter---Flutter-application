class CurrencyModel {
  final String base;
  final String date;
  final Map<String, double> rates;

  CurrencyModel({
    required this.base,
    required this.date,
    required this.rates,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    // Ensure all values in rates are converted to double safely
    final ratesMap = <String, double>{};
    json['rates']?.forEach((key, value) {
      try {
        ratesMap[key] = double.parse(value.toString());
      } catch (e) {
        print('Failed to parse rate for $key: $value');
      }
    });

    return CurrencyModel(
      base: json['base'] ?? '',
      date: json['date'] ?? '',
      rates: ratesMap,
    );
  }
}
