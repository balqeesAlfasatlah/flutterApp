import 'package:json_annotation/json_annotation.dart';

part 'news_request_model.g.dart';

@JsonSerializable()
class NewsRequestModel {
  final String apiKey;
  final String country;
  final String category;

  NewsRequestModel({
    required this.apiKey,
    required this.country,
    required this.category,
  });

  factory NewsRequestModel.fromJson(Map<String, dynamic> json) =>
      NewsRequestModel.fromJson(json);

  Map<String, dynamic> toJson() {
    return {"apikey": apiKey, "country": country, "category": category};
  }
}
