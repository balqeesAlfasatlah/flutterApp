import 'package:json_annotation/json_annotation.dart';
import 'package:new_app/features/news/domain/entity/news_entity.dart';
part 'news_response_model.g.dart';

@JsonSerializable()
class NewsResponseModel {
  String? status;
  int? totalResults;
  List<Results>? results;
  String? nextPage;

  NewsResponseModel({
    this.status,
    this.totalResults,
    this.results,
    this.nextPage,
  });

  NewsResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    nextPage = json['nextPage'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['nextPage'] = nextPage;
    return data;
  }
}

@JsonSerializable()
class Results {
  String? articleId;
  String? link;
  String? title;
  String? description;
  String? content;
  List<String>? keywords;
  List<String>? creator;
  String? language;
  List<String>? country;
  List<String>? category;
  String? pubDate;
  String? pubDateTZ;
  String? imageUrl;
  String? videoUrl; // FIXED
  String? sourceId;
  String? sourceName;
  int? sourcePriority;
  String? sourceUrl;
  String? sourceIcon;
  String? sentiment;
  String? sentimentStats;
  String? aiTag;
  String? aiRegion;
  String? aiOrg;
  String? aiSummary;
  bool? duplicate;

  Results({
    this.articleId,
    this.link,
    this.title,
    this.description,
    this.content,
    this.keywords,
    this.creator,
    this.language,
    this.country,
    this.category,
    this.pubDate,
    this.pubDateTZ,
    this.imageUrl,
    this.videoUrl,
    this.sourceId,
    this.sourceName,
    this.sourcePriority,
    this.sourceUrl,
    this.sourceIcon,
    this.sentiment,
    this.sentimentStats,
    this.aiTag,
    this.aiRegion,
    this.aiOrg,
    this.aiSummary,
    this.duplicate,
  });

  Results.fromJson(Map<String, dynamic> json) {
    articleId = json['article_id'];
    link = json['link'];
    title = json['title'];
    description = json['description'];
    content = json['content'];

    keywords = json['keywords'] != null
        ? List<String>.from(json['keywords'])
        : null;
    creator = json['creator'] != null
        ? List<String>.from(json['creator'])
        : null;
    country = json['country'] != null
        ? List<String>.from(json['country'])
        : null;
    category = json['category'] != null
        ? List<String>.from(json['category'])
        : null;

    language = json['language'];
    pubDate = json['pubDate'];
    pubDateTZ = json['pubDateTZ'];
    imageUrl = json['image_url'];
    videoUrl = json['video_url'];

    sourceId = json['source_id'];
    sourceName = json['source_name'];
    sourcePriority = json['source_priority'];
    sourceUrl = json['source_url'];
    sourceIcon = json['source_icon'];

    sentiment = json['sentiment'];
    sentimentStats = json['sentiment_stats'];
    aiTag = json['ai_tag'];
    aiRegion = json['ai_region'];
    aiOrg = json['ai_org'];
    aiSummary = json['ai_summary'];
    duplicate = json['duplicate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['article_id'] = articleId;
    data['link'] = link;
    data['title'] = title;
    data['description'] = description;
    data['content'] = content;
    data['keywords'] = keywords;
    data['creator'] = creator;
    data['language'] = language;
    data['country'] = country;
    data['category'] = category;
    data['pubDate'] = pubDate;
    data['pubDateTZ'] = pubDateTZ;
    data['image_url'] = imageUrl;
    data['video_url'] = videoUrl;
    data['source_id'] = sourceId;
    data['source_name'] = sourceName;
    data['source_priority'] = sourcePriority;
    data['source_url'] = sourceUrl;
    data['source_icon'] = sourceIcon;
    data['sentiment'] = sentiment;
    data['sentiment_stats'] = sentimentStats;
    data['ai_tag'] = aiTag;
    data['ai_region'] = aiRegion;
    data['ai_org'] = aiOrg;
    data['ai_summary'] = aiSummary;
    data['duplicate'] = duplicate;

    return data;
  }
}

extension ResultsToEntity on Results {
  ResultsEntity toEntity() {
    return ResultsEntity(title: title, link: link, description: description);
  }
}

// extentain to convert model to entity
extension NewsResponseToEntity on NewsResponseModel {
  NewsEntity toEntity() {
    return NewsEntity(
      status: status,
      totalResults: totalResults,
      articles: results?.map((e) => e.toEntity()).toList(),
    );
  }
}
