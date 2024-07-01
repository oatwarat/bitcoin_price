import '../../data/models/bitcoin_price.dart';
import '../../data/services/bitcoin_service_interface.dart';

class HomeViewModel {
  final IBitcoinService _bitcoinService;

  HomeViewModel(this._bitcoinService);

  BitcoinPrice? bitcoinPrice;
  String? errorMessage;

  Future<void> fetchBitcoinPrice() async {
    try {
      print('Fetching Bitcoin price...');
      bitcoinPrice = await _bitcoinService.fetchBitcoinPrice();
      print('Bitcoin price fetched: ${bitcoinPrice?.bpi['USD']?.rate}');
    } catch (e) {
      print('Error fetching bitcoin price: $e');
      errorMessage = e.toString();
    }
  }
}
