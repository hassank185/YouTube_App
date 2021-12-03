import 'package:youtube_app/models/item_data.dart';
import 'package:youtube_app/models/page_info.dart';

class YouTubeSearchModel {
  final String? kind;
  final String? etag;
  final String? nextPageToken;
  final String? regionCode;
  final PageInfoData pageInfo;
  final List<ItemData> items;

  YouTubeSearchModel({
    required this.kind,
    required this.etag,
    required this.nextPageToken,
    required this.regionCode,
    required this.pageInfo,
    required this.items,
  });

  factory YouTubeSearchModel.fromJson(Map<String, dynamic> json) {
    final items=json['items'] as List;
    List<ItemData> itemData=items.map((singleItem) => ItemData.fromJson(singleItem)).toList();
    return YouTubeSearchModel(
      etag: json['kind'],
      kind: json['etag'],
      nextPageToken: json['nextPageToken'],
      regionCode: json['regionCode'],
      pageInfo: PageInfoData.fromJson(
        json['pageInfo'],
      ),
      items: itemData,
    );
  }
}
