// models/currency_rate_model.dart
class CurrencyRate {
  final String base;
  final DateTime date;
  final Map<String, dynamic> rates;

  CurrencyRate({
    required this.base,
    required this.date,
    required this.rates,
  });

  factory CurrencyRate.fromJson(Map<String, dynamic> json) {
    return CurrencyRate(
      base: json['base'],
      date: DateTime.parse(json['date']),
      rates: Map<String, dynamic>.from(json['rates']),
    );
  }
}

class CurrencyConversion {
  final dynamic amount;
  final String from;
  final String to;
  final dynamic rate;
  final dynamic convertedAmount;
  final DateTime date;

  CurrencyConversion({
    required this.amount,
    required this.from,
    required this.to,
    required this.rate,
    required this.convertedAmount,
    required this.date,
  });
}