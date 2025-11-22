import 'package:new_app/features/news/domain/entity/news_entity.dart';

abstract class NewsRepository {
  Future<NewsEntity> getNews(bool isLocal);
}
