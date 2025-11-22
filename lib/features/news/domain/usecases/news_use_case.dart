import 'package:injectable/injectable.dart';
import 'package:new_app/features/news/domain/entity/news_entity.dart';
import 'package:new_app/features/news/domain/repository/news_repo.dart';

//@injectable
class GetNewsUseCase {
  NewsRepository newsRepository;
  GetNewsUseCase(this.newsRepository);

  Future<NewsEntity> execute() async {
    return await newsRepository.getNews(false);
  }
}
