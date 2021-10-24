// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDetailDto _$CoinDetailDtoFromJson(Map<String, dynamic> json) =>
    CoinDetailDto(
      json['description'] as String,
      json['development_status'] as String,
      json['first_data_at'] as String,
      json['hardware_wallet'] as bool,
      json['hash_algorithm'] as String,
      json['id'] as String,
      json['is_active'] as bool,
      json['is_new'] as bool,
      json['last_data_at'] as String,
      Links.fromJson(json['links'] as Map<String, dynamic>),
      (json['links_extended'] as List<dynamic>)
          .map((e) => LinksExtended.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['message'] as String,
      json['name'] as String,
      json['open_source'] as bool,
      json['org_structure'] as String,
      json['proof_type'] as String,
      json['rank'] as int,
      json['started_at'] as String,
      json['symbol'] as String,
      (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['team'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['type'] as String,
      Whitepaper.fromJson(json['whitepaper'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinDetailDtoToJson(CoinDetailDto instance) =>
    <String, dynamic>{
      'description': instance.description,
      'development_status': instance.developmentStatus,
      'first_data_at': instance.firstDataAt,
      'hardware_wallet': instance.hardwareWallet,
      'hash_algorithm': instance.hashAlgorithm,
      'id': instance.id,
      'is_active': instance.isActive,
      'is_new': instance.isNew,
      'last_data_at': instance.lastDataAt,
      'links': instance.links,
      'links_extended': instance.linksExtended,
      'message': instance.message,
      'name': instance.name,
      'open_source': instance.openSource,
      'org_structure': instance.orgStructure,
      'proof_type': instance.proofType,
      'rank': instance.rank,
      'started_at': instance.startedAt,
      'symbol': instance.symbol,
      'tags': instance.tags,
      'team': instance.team,
      'type': instance.type,
      'whitepaper': instance.whitepaper,
    };
