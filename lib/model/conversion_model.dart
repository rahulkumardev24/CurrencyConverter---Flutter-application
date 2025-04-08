class ConversionModel {
  final String date;
  final String from;
  final String to;
  final double rate;
  final double givenAmount;
  final double convertedAmount;

  ConversionModel({
    required this.date,
    required this.from,
    required this.to,
    required this.rate,
    required this.givenAmount,
    required this.convertedAmount,
  });

  factory ConversionModel.fromJson(Map<String, dynamic> json) {
    return ConversionModel(
      date: json['date'],
      from: json['from'],
      to: json['to'],
      rate: double.parse(json['rate']),
      givenAmount: double.parse(json['givenAmount']),
      convertedAmount: double.parse(json['convertedAmount']),
    );
  }
}
