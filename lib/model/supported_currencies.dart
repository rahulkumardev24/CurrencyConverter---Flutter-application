class SupportedCurrenciesResponse {
  final Map<String, CurrencyDetails> supportedCurrenciesMap;
  SupportedCurrenciesResponse({required this.supportedCurrenciesMap});
  factory SupportedCurrenciesResponse.fromJson(Map<String, dynamic> json) {
    final map = (json['supportedCurrenciesMap'] as Map<String, dynamic>).map(
      (key, value) => MapEntry(
        key,
        CurrencyDetails.fromJson(value as Map<String, dynamic>),
      ),
    );
    return SupportedCurrenciesResponse(supportedCurrenciesMap: map);
  }

  Map<String, dynamic> toJson() {
    return {
      'supportedCurrenciesMap': supportedCurrenciesMap.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
    };
  }
}

class CurrencyDetails {
  final String currencyCode;
  final String currencyName;
  final String countryCode;
  final String countryName;
  final String status;
  final DateTime availableFrom;
  final DateTime availableUntil;
  final String icon;

  CurrencyDetails({
    required this.currencyCode,
    required this.currencyName,
    required this.countryCode,
    required this.countryName,
    required this.status,
    required this.availableFrom,
    required this.availableUntil,
    required this.icon,
  });

  factory CurrencyDetails.fromJson(Map<String, dynamic> json) {
    return CurrencyDetails(
      currencyCode: json['currencyCode'] ?? '',
      currencyName: json['currencyName'] ?? '',
      countryCode: json['countryCode'] ?? '',
      countryName: json['countryName'] ?? '',
      status: json['status'] ?? '',
      availableFrom: json['availableFrom'] != null
          ? DateTime.parse(json['availableFrom'])
          : DateTime.now(),
      availableUntil: json['availableUntil'] != null
          ? DateTime.parse(json['availableUntil'])
          : DateTime.now(),
      icon: json['icon'] ?? '', // this might be null from server
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'currencyCode': currencyCode,
      'currencyName': currencyName,
      'countryCode': countryCode,
      'countryName': countryName,
      'status': status,
      'availableFrom': availableFrom.toIso8601String(),
      'availableUntil': availableUntil.toIso8601String(),
      'icon': icon,
    };
  }
}
