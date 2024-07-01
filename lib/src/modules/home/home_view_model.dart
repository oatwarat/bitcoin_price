import '../../data/models/bitcoin_price.dart';
import '../../data/services/bitcoin_service.dart';

class HomeViewModel {
  final BitcoinService _bitcoinService = BitcoinService();
  BitcoinPrice? bitcoinPrice;
  String? errorMessage;

  Future<void> fetchBitcoinPrice() async {
    try {
      print('Fetching Bitcoin price...');
      bitcoinPrice = await _bitcoinService.fetchBitcoinPrice();
      if (bitcoinPrice != null) {
        print('Bitcoin price fetched: ${bitcoinPrice!.bpi['USD']?.rate}');
      } else {
        print('Bitcoin price is null');
      }
    } catch (e) {
      print('Error fetching bitcoin price: $e');
      errorMessage = e.toString();
    }
  }
}
