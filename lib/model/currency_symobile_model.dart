class CurrencySymbolsResponse {
  final Map<String, CurrencyInfo> currencySymbols;

  CurrencySymbolsResponse({required this.currencySymbols});

  factory CurrencySymbolsResponse.fromJson(Map<String, dynamic> json) {
    final symbolsMap = <String, CurrencyInfo>{};
    json['currencySymbols'].forEach((key, value) {
      symbolsMap[key] = CurrencyInfo.fromJson({'currencyCode': key, 'currencyName': value});
    });
    return CurrencySymbolsResponse(currencySymbols: symbolsMap);
  }

  Map<String, dynamic> toJson() {
    return {
      'currencySymbols': currencySymbols.map((key, value) => MapEntry(key, value.toJson())),
    };
  }
}

class CurrencyInfo {
  final String currencyCode;
  final String currencyName;

  CurrencyInfo({
    required this.currencyCode,
    required this.currencyName,
  });

  factory CurrencyInfo.fromJson(Map<String, dynamic> json) {
    return CurrencyInfo(
      currencyCode: json['currencyCode'] ?? '',
      currencyName: json['currencyName'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'currencyCode': currencyCode,
      'currencyName': currencyName,
    };
  }

  // Helper methods
  bool get isCrypto {
    // Add logic to determine if this is a cryptocurrency
    // For example, check if it's not a standard fiat currency code
    return currencyCode.length > 3 ||
        currencyCode == 'BTC' ||
        currencyCode == 'ETH' ||
        currencyName.toLowerCase().contains('token') ||
        currencyName.toLowerCase().contains('protocol');
  }

  String get displayName => '$currencyCode - $currencyName';
}