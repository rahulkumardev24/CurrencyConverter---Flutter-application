import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:currency_converter/constant/urls.dart';
import 'package:currency_converter/model/currency_model.dart';
import 'package:currency_converter/model/conversion_model.dart';

class CurrencyService {
  /// 1. Get all latest currency rates by default base or custom base
  Future<CurrencyModel?> fetchCurrency({String? base}) async {
    final url = base == null
        ? AppConstant.latestRates
        : AppConstant.getRatesWithBase(base);

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return CurrencyModel.fromJson(data);
      } else {
        print("Failed to load currency: ${response.statusCode}");
        return null;
      }
    } catch (error) {
      print("Error occurred while fetching currency: $error");
      return null;
    }
  }

  /// 2. Get specific currencies by symbols and base
  Future<CurrencyModel?> fetchCurrencyBySymbolsAndBase({
    required List<String> symbols,
    required String base,
  }) async {
    final url = AppConstant.getRatesWithSymbolsAndBase(symbols, base);

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return CurrencyModel.fromJson(data);
      } else {
        print("Failed to fetch by symbols: ${response.statusCode}");
        return null;
      }
    } catch (error) {
      print("Error fetching by symbols & base: $error");
      return null;
    }
  }

  /// 3. Convert from one currency to another
  Future<ConversionModel?> convertCurrency({
    required String from,
    required String to,
    double amount = 1.0,
  }) async {
    final url = AppConstant.convertCurrency(
      from: from,
      to: to,
      amount: amount,
    );

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return ConversionModel.fromJson(data);
      } else {
        print("Failed to convert currency: ${response.statusCode}");
        return null;
      }
    } catch (error) {
      print("Error converting currency: $error");
      return null;
    }
  }
}
