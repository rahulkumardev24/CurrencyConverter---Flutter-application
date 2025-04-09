import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:currency_converter/constant/urls.dart';
import 'package:currency_converter/model/currency_model.dart';


import '../model/currency_converter_model.dart';
import '../model/supported_currencies.dart';

class CurrencyService {
  /// 1. Get all latest currency rates by default base or custom base
  Future<CurrencyModel?> fetchCurrency({String? base}) async {
    final url =
        base == null
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

  Future<SupportedCurrenciesResponse?> supportCurrency() async {
    final url = Uri.parse(AppConstant.supportedCurrencies);
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return SupportedCurrenciesResponse.fromJson(data);
      } else {
        print("Failed: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception: $e");
    }
    return null;
  }

  /// ---- currency change --- ///
  Future<CurrencyRate> getExchangeRate({
    required String baseCurrency,
    required String targetCurrency,
  }) async {
    final url = Uri.parse(
      AppConstant.currencyConverterUrl(baseCurrency, targetCurrency),
    );
    try {
      final response = await http.get(
        url,
        headers: {'apikey': AppConstant.CURRENCYCONVERTERAPIKEY},
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return CurrencyRate.fromJson(data);
      } else {
        throw Exception('Failed to load rates: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }


  // For getting all rates for a base currency
  Future<CurrencyModel> getAllExchangeRates({
    required String baseCurrency,
  }) async {
    final url = Uri.parse(
      'https://api.apilayer.com/exchangerates_data/latest?base=$baseCurrency',
    );

    final response = await _makeRequest(url);
    return CurrencyModel.fromJson(response);
  }

  // Shared request method
  Future<Map<String, dynamic>> _makeRequest(Uri url) async {
    try {
      final response = await http.get(
        url,
        headers: {'apikey': AppConstant.CURRENCYCONVERTERAPIKEY},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }

}
