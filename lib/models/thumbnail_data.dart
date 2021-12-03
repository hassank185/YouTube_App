class ThumbnailData {
  final String url;
  final int? width;
  final int? height;

  ThumbnailData({
    required this.width,
    required this.url,
    required this.height,
  });

  factory ThumbnailData.fromJson(Map<String,dynamic>json){
    return ThumbnailData(
      url: json['url'],
      width: json['width'],
      height: json['height']
    );
  }

}
