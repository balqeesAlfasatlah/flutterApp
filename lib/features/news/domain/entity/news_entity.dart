import 'package:new_app/features/news/data/model/response_model/news_response_model.dart';

class NewsEntity {
  final String? status;
  final int? totalResults;
  final List<ResultsEntity>? articles;
  NewsEntity({this.status, this.totalResults, this.articles});
}

class ResultsEntity {
  final String? title;
  final String? link;
  final String? description;
  ResultsEntity({this.title, this.link, this.description});
}
