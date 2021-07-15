import './model/models.dart';
import 'dart:convert' as convert;
import 'dart:io' as io;

void deserializeJson() async {
  dynamic jsonResponse;
  var episode = <Episode>[];
  List<Seasons> seasons;
  List<Info> info;
  List<dynamic> seasonResponseList;
  List<dynamic> epiResponseList;
  var infoResponseList = [];

  // read json from local file.
  jsonResponse = convert.jsonDecode(
    await _getJson(),
  );
  // parse seasons
  seasonResponseList = jsonResponse['seasons'] as List;
  seasons = seasonResponseList
      .map(
        (season) => Seasons.fromJson(season),
      )
      .toList();

  // parse info object
  var infoMap = jsonResponse['info'];

  infoResponseList.add(infoMap);
  info = infoResponseList.map((info) => Info.fromJson(info)).toList();

  // parse episodes

  if (jsonResponse['episodes'] is List) {
    epiResponseList = jsonResponse['episodes'] as List;
    episode = epiResponseList.map((epi) => Episode.fromJson(epi)).toList();
  } else {
    var epiMap = jsonResponse['episodes'] as Map;
    var i = epiMap.entries.length; //total count of entries;
    for (var j = 1; j <= i; j++) {
      epiResponseList = jsonResponse['episodes']['$j'];
      episode = epiResponseList.map((epi) => Episode.fromJson(epi)).toList();
    }
  }

  // printing
  print('Season json ${seasons[0].airDate}');
  print('Info json ${info[0].categoryId}');
  print('Episode json ${episode[0].title}');
}

Future<String> _getJson() async {
  return await io.File('assets/mock.json').readAsString();
}
