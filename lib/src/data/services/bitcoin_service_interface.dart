import '../models/bitcoin_price.dart';

abstract class IBitcoinService {
  Future<BitcoinPrice> fetchBitcoinPrice();
}
