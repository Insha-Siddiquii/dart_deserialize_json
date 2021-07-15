class Seasons {
  String? airDate;
  int? episodeCount;
  int? id;
  String? name;
  String? overview;
  int? seasonNumber;
  String? cover;
  String? coverBig;

  Seasons({
    required this.airDate,
    required this.cover,
    required this.coverBig,
    required this.episodeCount,
    required this.id,
    required this.name,
    required this.overview,
    required this.seasonNumber,
  });

  factory Seasons.fromJson(dynamic json) {
    return Seasons(
      airDate: json['air_date'],
      cover: json['cover'],
      coverBig: json['cover_big'],
      episodeCount: json['episode_count'],
      id: json['id'],
      name: json['name'],
      overview: json['overview'],
      seasonNumber: json['season_number'],
    );
  }
}
