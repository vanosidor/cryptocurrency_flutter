// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDto _$CoinDtoFromJson(Map<String, dynamic> json) => CoinDto(
      json['id'] as String,
      json['is_active'] as bool,
      json['is_new'] as bool,
      json['name'] as String,
      json['rank'] as int,
      json['symbol'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$CoinDtoToJson(CoinDto instance) => <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_new': instance.isNew,
      'name': instance.name,
      'rank': instance.rank,
      'symbol': instance.symbol,
      'type': instance.type,
    };
