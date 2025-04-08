class CurrencyRateModel {
  final DateTime date;
  final String base;
  final Map<String, double> rates;

  CurrencyRateModel({
    required this.date,
    required this.base,
    required this.rates,
  });

  factory CurrencyRateModel.fromJson(Map<String, dynamic> json) {
    return CurrencyRateModel(
      date: DateTime.parse(json['date']),
      base: json['base'],
      rates: Map<String, double>.from(
        json['rates'].map((key, value) => MapEntry(key, double.parse(value.toString()))),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'base': base,
      'rates': rates,
    };
  }
}
