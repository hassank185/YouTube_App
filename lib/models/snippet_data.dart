import 'package:youtube_app/models/thumbnails.dart';

class SnippetData {
  final String? publishedAt;
  final String? channelId;
  final String? title;
  final String? description;
  final String? channelTitle;
  final String? liveBroadcastContent;
  final String? publishTime;
  final Thumbnails thumbnails;

  SnippetData({
    required this.channelTitle,
    required this.liveBroadcastContent,
    required this.publishTime,
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
  });

  factory SnippetData.fromJson(Map<String, dynamic> json) {
    return SnippetData(
      publishedAt: json['publishedAt'],
      channelId: json['channelId'],
      title: json['title'],
      description: json['description'],
      channelTitle: json['channelTitle'],
      liveBroadcastContent: json['liveBroadCastContent'],
      publishTime: json['publishTime'],
      thumbnails: Thumbnails.fromJson(json['thumbnails'])
    );
  }
}
