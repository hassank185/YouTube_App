


class IdData {
  final String? kind;
  final  videoId;

  IdData({required this.kind, required this.videoId});

  factory IdData.fromJson(Map<String,dynamic>json){
    return IdData(
      kind: json['kind'],
      videoId: json['videoId']
    );
  }

}