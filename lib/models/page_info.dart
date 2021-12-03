


class PageInfoData {
  final int? totalResults;
  final int? resultPerPage;

  PageInfoData({required this.totalResults, required this.resultPerPage});

  factory PageInfoData.fromJson(Map<String, dynamic> json) {
    return PageInfoData(
      totalResults: json['totalResults'],
      resultPerPage: json['resultsPerPage'],
    );
  }
}