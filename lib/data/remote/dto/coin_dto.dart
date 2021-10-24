import 'package:json_annotation/json_annotation.dart';

part 'coin_dto.g.dart';

@JsonSerializable()
class CoinDto {
  final String id;
  @JsonKey(name: 'is_active')
  final bool isActive;
  @JsonKey(name: 'is_new')
  final bool isNew;
  final String name;
  final int rank;
  final String symbol;
  final String type;

  CoinDto(this.id, this.isActive, this.isNew, this.name, this.rank, this.symbol, this.type);

  factory CoinDto.fromJson(Map<String, dynamic> json) => _$CoinDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoinDtoToJson(this);

}