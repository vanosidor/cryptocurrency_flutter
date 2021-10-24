import 'package:json_annotation/json_annotation.dart';

part 'coin_detail_dto.g.dart';

@JsonSerializable()
class CoinDetailDto {
  final String description;
  @JsonKey(name: 'development_status')
  final String developmentStatus;
  @JsonKey(name: 'first_data_at')
  final String firstDataAt;
  @JsonKey(name: 'hardware_wallet')
  final bool hardwareWallet;
  @JsonKey(name: 'hash_algorithm')
  final String hashAlgorithm;
  final String id;
  @JsonKey(name: 'is_active')
  final bool isActive;
  @JsonKey(name: 'is_new')
  final bool isNew;
  @JsonKey(name: 'last_data_at')
  final String lastDataAt;
  final Links links;
  @JsonKey(name: 'links_extended')
  final List<LinksExtended> linksExtended;
  final String message;
  final String name;
  @JsonKey(name: 'open_source')
  final bool openSource;
  @JsonKey(name: 'org_structure')
  final String orgStructure;
  @JsonKey(name: 'proof_type')
  final String proofType;
  final int rank;
  @JsonKey(name: 'started_at')
  final String startedAt;
  final String symbol;
  final List<Tag> tags;
  final List<Team> team;
  final String type;
  final Whitepaper whitepaper;

  CoinDetailDto(
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

  factory CoinDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoinDetailDtoToJson(this);
}

class Team {
  final String id;
  final String name;
  final String position;


  Team({required this.id, required this.name, required this.position});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      position: json['position'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['position'] = position;
    return data;
  }
}

class Tag {
  int coin_counter;
  int ico_counter;
  String id;
  String name;

  Tag({required this.coin_counter, required this.ico_counter, required this.id, required this.name});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      coin_counter: json['coin_counter'],
      ico_counter: json['ico_counter'],
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coin_counter'] = this.coin_counter;
    data['ico_counter'] = this.ico_counter;
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Links {
  List<String>? explorer;
  List<String>? facebook;
  List<String>? reddit;
  List<String>? source_code;
  List<String>? website;
  List<String>? youtube;

  Links(
      {required this.explorer,
      required this.facebook,
      required this.reddit,
      required this.source_code,
      required this.website,
      required this.youtube});

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      explorer: json['explorer'] != null
          ? new List<String>.from(json['explorer'])
          : null,
      facebook: json['facebook'] != null
          ? new List<String>.from(json['facebook'])
          : null,
      reddit:
          json['reddit'] != null ? new List<String>.from(json['reddit']) : null,
      source_code: json['source_code'] != null
          ? new List<String>.from(json['source_code'])
          : null,
      website: json['website'] != null
          ? new List<String>.from(json['website'])
          : null,
      youtube: json['youtube'] != null
          ? new List<String>.from(json['youtube'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.explorer != null) {
      data['explorer'] = this.explorer;
    }
    if (this.facebook != null) {
      data['facebook'] = this.facebook;
    }
    if (this.reddit != null) {
      data['reddit'] = this.reddit;
    }
    if (this.source_code != null) {
      data['source_code'] = this.source_code;
    }
    if (this.website != null) {
      data['website'] = this.website;
    }
    if (this.youtube != null) {
      data['youtube'] = this.youtube;
    }
    return data;
  }
}

class LinksExtended {
  final Stats stats;
  final String type;
  final String url;

  LinksExtended({required this.stats, required this.type, required this.url});

  factory LinksExtended.fromJson(Map<String, dynamic> json) {
    return LinksExtended(
      stats: Stats.fromJson(json['stats']) ,
      type: json['type'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    return data;
  }
}

class Stats {
  final int followers;

  Stats({required this.followers});

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      followers: json['followers'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['followers'] = this.followers;
    return data;
  }
}

class Whitepaper {
  final String link;
  final String thumbnail;

  Whitepaper({required this.link,  required this.thumbnail});

  factory Whitepaper.fromJson(Map<String, dynamic> json) {
    return Whitepaper(
      link: json['link'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}
