import 'dart:convert';
import 'package:currency_converter/constant/urls.dart';
import '../model/currency_model.dart';
import 'package:http/http.dart' as http;

class CurrencyService {
  Future<CurrencyModel?> fetchCurrency() async {
    try {
      final response = await http.get(
        Uri.parse("${AppConstant.Urls}${AppConstant.APIKEY}"),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return CurrencyModel.fromJson(data);
      } else {
        print("Failed  status code : ${response.statusCode}");
        return null;
      }
    } catch (error) {
      print("Error occurred $error");
      return null;
    }
  }
}
