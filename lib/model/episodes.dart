class Episode {
  String? id;
  String? title;
  int? episodeNum;
  String? containerExtension;
  String? customSid;
  String? added;
  int? season;
  String? directSource;
  List<String>? backdropPath;
  EpisodeInfo info;

  Episode({
    required this.id,
    required this.title,
    required this.episodeNum,
    required this.containerExtension,
    required this.customSid,
    required this.added,
    required this.season,
    required this.directSource,
    required this.info,
  });

  factory Episode.fromJson(dynamic json) {
    return Episode(
      id: json['id'],
      title: json['title'],
      episodeNum: json['episode_num'],
      containerExtension: json['container_extension'],
      customSid: json['custom_sid'],
      added: json['added'],
      season: json['season'],
      directSource: json['direct_source'],
      info: EpisodeInfo.fromJson(json['info']),
    );
  }
}

class EpisodeInfo {
  String? releaseDate;
  String? plot;
  int? durationSecs;
  String? duration;
  List<String>? video;
  List<String>? audio;
  int? bitrate;
  String? rating;
  String? season;
  String? tmdbId;
  String? movieImage;

  EpisodeInfo({
    required this.releaseDate,
    required this.plot,
    required this.durationSecs,
    required this.duration,
    required this.video,
    required this.audio,
    required this.bitrate,
    required this.rating,
    required this.season,
    required this.tmdbId,
    required this.movieImage,
  });

  factory EpisodeInfo.fromJson(dynamic json) {
    return EpisodeInfo(
      releaseDate: json['releasedate'],
      plot: json['plot'],
      durationSecs: json['duration_secs'],
      duration: json['duration'],
      video: List<String>.from(json['video']),
      audio: List<String>.from(json['audio']),
      bitrate: json['bitrate'],
      rating: json['rating'],
      season: json['season'],
      tmdbId: json['tmdb_id'],
      movieImage: json['movie_image'],
    );
  }
}
