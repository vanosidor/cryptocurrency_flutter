import 'package:equatable/equatable.dart';

class Coin extends Equatable {
  final String id;
  final bool isActive;
  final bool isNew;
  final String name;
  final int rank;
  final String symbol;
  final String type;

  const Coin(
      {required this.id,
      required this.isActive,
      required this.isNew,
      required this.name,
      required this.rank,
      required this.symbol,
      required this.type});

  @override
  List<Object?> get props => [
        id,
        isActive,
        isNew,
        name,
        rank,
        symbol,
        type,
      ];
}
