import 'package:json_annotation/json_annotation.dart';

part 'bitcoin_price.g.dart';

@JsonSerializable()
class BitcoinPrice {
  final Map<String, CurrencyData> bpi;
  final TimeInfo time;
  final String disclaimer;
  final String chartName;

  BitcoinPrice({
    required this.bpi,
    required this.time,
    required this.disclaimer,
    required this.chartName,
  });

  factory BitcoinPrice.fromJson(Map<String, dynamic> json) =>
      _$BitcoinPriceFromJson(json);
  Map<String, dynamic> toJson() => _$BitcoinPriceToJson(this);
}

@JsonSerializable()
class TimeInfo {
  final String updated;
  final String updatedISO;
  final String updateduk;

  TimeInfo({
    required this.updated,
    required this.updatedISO,
    required this.updateduk,
  });

  factory TimeInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$TimeInfoToJson(this);
}

@JsonSerializable()
class CurrencyData {
  final String code;
  final String symbol;
  final String rate;
  final String description;
  final double rate_float;

  CurrencyData({
    required this.code,
    required this.symbol,
    required this.rate,
    required this.description,
    required this.rate_float,
  });

  factory CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDataFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyDataToJson(this);
}
