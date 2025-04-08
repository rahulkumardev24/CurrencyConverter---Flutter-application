class FilteredCurrencyRateResponse {
  final String date;
  final String base;
  final Map<String, String> rates;

  FilteredCurrencyRateResponse({
    required this.date,
    required this.base,
    required this.rates,
  });

  factory FilteredCurrencyRateResponse.fromJson(Map<String, dynamic> json) {
    final ratesMap = Map<String, String>.from(json['rates']);

    return FilteredCurrencyRateResponse(
      date: json['date'],
      base: json['base'],
      rates: ratesMap,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'base': base,
      'rates': rates,
    };
  }
}
