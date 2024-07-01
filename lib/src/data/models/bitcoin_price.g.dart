// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitcoin_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BitcoinPrice _$BitcoinPriceFromJson(Map<String, dynamic> json) => BitcoinPrice(
      bpi: (json['bpi'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, CurrencyData.fromJson(e as Map<String, dynamic>)),
      ),
      time: TimeInfo.fromJson(json['time'] as Map<String, dynamic>),
      disclaimer: json['disclaimer'] as String,
      chartName: json['chartName'] as String,
    );

Map<String, dynamic> _$BitcoinPriceToJson(BitcoinPrice instance) =>
    <String, dynamic>{
      'bpi': instance.bpi.map((k, e) => MapEntry(k, e.toJson())),
      'time': instance.time.toJson(),
      'disclaimer': instance.disclaimer,
      'chartName': instance.chartName,
    };

TimeInfo _$TimeInfoFromJson(Map<String, dynamic> json) => TimeInfo(
      updated: json['updated'] as String,
      updatedISO: json['updatedISO'] as String,
      updateduk: json['updateduk'] as String,
    );

Map<String, dynamic> _$TimeInfoToJson(TimeInfo instance) => <String, dynamic>{
      'updated': instance.updated,
      'updatedISO': instance.updatedISO,
      'updateduk': instance.updateduk,
    };

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) => CurrencyData(
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      rate: json['rate'] as String,
      description: json['description'] as String,
      rate_float: (json['rate_float'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrencyDataToJson(CurrencyData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'rate': instance.rate,
      'description': instance.description,
      'rate_float': instance.rate_float,
    };
