import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/bitcoin_price.dart';
import '../../utils/constants.dart';

class BitcoinService {
  Future<BitcoinPrice> fetchBitcoinPrice() async {
    try {
      print('Sending API request to: ${ApiConstants.bitcoinPriceUrl}');
      final response = await http.get(Uri.parse(ApiConstants.bitcoinPriceUrl));
      print('API response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        print('API Response: ${response.body}');
        final jsonData = json.decode(response.body);
        return BitcoinPrice.fromJson(jsonData);
      } else {
        print(
            'Failed to load bitcoin price. Status code: ${response.statusCode}');
        throw Exception(
            'Failed to load bitcoin price. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in fetchBitcoinPrice: $e');
      throw e;
    }
  }
}
