class Info {
  String? name;
  String? cover;
  int? rating5based;
  String? plot;
  String? cast;
  String? director;
  String? genre;
  String? releaseDate;
  String? lastModified;
  String? rating;
  String? youtubeTrailer;
  String? episodeRunTime;
  String? categoryId;
  List<dynamic>? backdropPath;

  Info({
    required this.backdropPath,
    required this.cast,
    required this.categoryId,
    required this.cover,
    required this.director,
    required this.episodeRunTime,
    required this.genre,
    required this.lastModified,
    required this.name,
    required this.plot,
    required this.rating,
    required this.rating5based,
    required this.releaseDate,
    required this.youtubeTrailer,
  });
  // Info(
  //   this.backdropPath,
  //   this.cast,
  //   this.categoryId,
  //   this.cover,
  //   this.director,
  //   this.episodeRunTime,
  //   this.genre,
  //   this.lastModified,
  //   this.name,
  //   this.plot,
  //   this.rating,
  //   this.rating5based,
  //   this.releaseDate,
  //   this.youtubeTrailer,
  // );

  factory Info.fromJson(dynamic json) {
    return Info(
      backdropPath: json['backdrop_path'],
      cast: json['cast'],
      categoryId: json['category_id'],
      cover: json['cover'],
      director: json['director'],
      episodeRunTime: json['episode_run_time'],
      genre: json['genre'],
      lastModified: json['last_modified'],
      name: json['name'],
      plot: json['plot'],
      rating: json['rating'],
      rating5based: json['rating_5based'],
      releaseDate: json['releaseDate'],
      youtubeTrailer: json['youtube_trailer'],
    );
  }
}
