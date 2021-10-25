import 'package:cryptocurrency_flutter/data/remote/dto/coin_detail_dto.dart';
import 'package:equatable/equatable.dart';

class CoinDetails extends Equatable {
  final String description;
  final String developmentStatus;
  final String firstDataAt;
  final bool hardwareWallet;
  final String hashAlgorithm;
  final String id;
  final bool isActive;
  final bool isNew;
  final String lastDataAt;
  final Links links;
  final List<LinksExtended> linksExtended;
  final String message;
  final String name;
  final bool openSource;
  final String orgStructure;
  final String proofType;
  final int rank;
  final String startedAt;
  final String symbol;
  final List<Tag> tags;
  final List<Team> team;
  final String type;
  final Whitepaper whitepaper;

  const CoinDetails(
      this.description,
      this.developmentStatus,
      this.firstDataAt,
      this.hardwareWallet,
      this.hashAlgorithm,
      this.id,
      this.isActive,
      this.isNew,
      this.lastDataAt,
      this.links,
      this.linksExtended,
      this.message,
      this.name,
      this.openSource,
      this.orgStructure,
      this.proofType,
      this.rank,
      this.startedAt,
      this.symbol,
      this.tags,
      this.team,
      this.type,
      this.whitepaper);

  @override
  List<Object?> get props => [
        description,
        developmentStatus,
        firstDataAt,
        hardwareWallet,
        hashAlgorithm,
        id,
        isActive,
        isNew,
        lastDataAt,
        links,
        linksExtended,
        message,
        name,
        openSource,
        orgStructure,
        proofType,
        rank,
        startedAt,
        symbol,
        tags,
        team,
        type,
        whitepaper
      ];
}
